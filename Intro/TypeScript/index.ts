
//informo o tipo de dado com os as para o Typesrcipt entender
const input = document.getElementById('input') as HTMLInputElement;

input.addEventListener('input', (event)=>{
    // console.log('digitei');

    //aponto o tipo e consigo pegar o elemento.
    const i = event.currentTarget as HTMLInputElement;
    console.log(i.value)
});