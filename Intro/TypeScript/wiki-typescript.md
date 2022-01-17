# types and interfaces

## A interface eu defino o objeto com suas opções (contratos de estrutura de dados)

    interface IAnimal{
        nome: string;
        tipo: 'terreste' | 'aquático';
        domestico: boolean;
    }



## posso estender a interface 
    interface IFelino extends IAnimal{
        visaoNoturna: boolean;
    }

    interface Icanino extends IAnimal{
        porte: 'pequeno' | 'médio' | 'grande'
    }

## junções e merges de interfaces

    type Idomestico = IFelino | Icanino;

## utilizando as informações de ambas:
    const animal: Idomestico = {
        domestico: true,
        nome: 'cachorro',
        tipo: 'terreste',
        porte: 'médio',
    }

***

# Definindo elementos do html para o TS
## tilizamos o 'as"

### informo o tipo de dado com os as para o Typesrcipt entender
    const input = document.getElementById('input') as HTMLInputElement;

    input.addEventListener('input', (event)=>{
        // console.log('digitei');

        //aponto o tipo e consigo pegar o elemento.
        const i = event.currentTarget as HTMLInputElement;
        console.log(i.value)
    });

---
# Desenvolvendo condicionais a partir de parâmetros

    interface IUsuario {
        id: string;
        email: string;
    }

    interface IAdmin extends IUsuario {
        cargo: 'gerente' | 'coordenador' | 'supervisior';
    }

    function redicione(usuario:IUsuario | IAdmin) {
        if ('cargo' in usuario){
            //redicionar para área do usuário
        }
        //redirecionar para a área do usuário
    }

---
# Utilizando o caracter "?" para variáveis opcionais

    interface IUsuario {
        id: string;
        email: string;
        //opcional
        cargo?: 'gerente' | 'coordenador' | 'supervisior' | 'funcionario';
    }

    function redicione(usuario:IUsuario) {
        if (usuario.cargo){
            //redicionar (usuário.cargo)
        }
        //redirecionar para a área do usuário
    }
---
# Exemplo de como usar Omit 

    interface Pessoa {
        nome: string;
        idade: number;
        nacionalidade:string;
    }

    interface Brasileiro extends Omit<Pessoa, 'nacionalidade'>{
        
    }