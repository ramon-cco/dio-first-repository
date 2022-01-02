programa
{
	
	funcao inicio()
	{
		inteiro contador=0, coluna=0
		cadeia pessoa[3][3]={{"João","São Paulo","(11) 9999-5241"},{"Maria","Ribeirão Preto","(16) 9999-8596"},{"Ana","Manaus","(92) 9999-8574"}}


		faca{
			//escreva a primeira linha da tabela
			faca{
			escreva ("Nome: " + pessoa[contador][coluna] +"\n")
			coluna++
			escreva ("Cidade: "+ pessoa[contador][coluna] +"\n")
			coluna++
			escreva ("Telefone: "+ pessoa[contador][coluna] + "\n")
			
			}enquanto (coluna<= 1)
		//zera o indice da coluna
		coluna=0
		//incrementa o contador
		contador++
		}enquanto (contador<=2)
		
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */