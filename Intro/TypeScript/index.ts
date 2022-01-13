//types
//interfaces

// na interface eu defino o objeto com suas opções
interface IAnimal{
    nome: string;
    tipo: 'terreste' | 'aquático';
}

//posso estender a interface 
interface IFelino extends IAnimal{
    visaoNoturna: boolean;
}


const animal: IAnimal = {
    nome: 'Elefante',
    tipo: "terreste"

}