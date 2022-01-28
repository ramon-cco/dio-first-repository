import React from "react"
import ReactDOM from "react-dom"
import "./styles.css"

function sum (a, b) {
    return a + b
}

function primeirJSX(){
    return(
        <div className="teste">
            Ramon Oliveira - Introdução ao React JS
            <h1>Soma: {sum(10, 20)} </h1>
        </div>
    )
}

const App = () => {
    return(
        <div className="App">
            {primeirJSX()}
        </div>
    )
}

const rootElement = document.getElementById("root")
ReactDOM.render(<App />, rootElement)