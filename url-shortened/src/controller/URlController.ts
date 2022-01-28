import { URLModel } from "../database/model/URL";
import { json, Request, Response } from "express";
import shortId from 'shortid'
import { config } from "../config/Constants";

export class URLController {
    public async shorten(req:Request, response:Response): Promise<void>{
        // Ver se a URL já não existe
        const {originURL} = req.body
        const url = await URLModel.findOne({originURL})
        if (url){
            response.json(url)
            return
        }
        //Criar o hash para essa URL
        const hash = shortId.generate()
        const shortURL = `${config.API_URL}/${hash}`
        // Salvar a URl no Banco
        const newURL = await URLModel.create({hash, shortURL, originURL})
        //Retornar a URl que a gente salvou
        response.json({originURL, hash, shortURL})
    }

    public async redirect(req: Request, response:Response):Promise<void>{
        // pegar hash da URL
        const {hash} = req.params
        // Enconrar a URL original pelo hash
        const url = await URLModel.findOne({hash})
        if (url){
            response.redirect(url.originURL)
            return
        }
         response.status(400).json({
             error: 'URL not found'
         })
    }
}