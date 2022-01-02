programa
{
	
	funcao inicio()
	{
		real jan,fev,mar,abr,total,media
		cadeia vendedor

		escreva("Digite o nome do vendedor:")
		leia(vendedor)

		escreva("Qual o valor das vendas do mês de Janeiro?")
		leia(jan)
		escreva("Qual o valor das vendas do mês de Fevereiro?")
		leia(fev)
		escreva("Qual o valor das vendas do mês de Março?")
		leia(mar)
		escreva("Qual o valor das vendas do mês de Abril?")
		leia(abr)

		total = (jan+fev+mar+abr)
		media = total/4
		escreva("O " + vendedor + " fez o total de vendas de: R$" + total + "e obteve uma média de vendas de: R$" + media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 582; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */