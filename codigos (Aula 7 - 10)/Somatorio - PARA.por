programa
{
	
	funcao inicio()
	{
		//Variáveis 
		inteiro numero
		inteiro soma = 0
		
		escreva("|------------   Bem vindo Usuário ao contador  ------------| \n")
		escreva("|-- A aplicação contador vai somar os números informados --| \n")
		escreva("|                                                          | \n")
		
			para (inteiro cont=1; cont<=10; cont++){
				escreva("|--- Digite o "+cont+"º número para a soma:")
				leia(numero)
				soma = (soma+numero)
			}

		pularLinha()
		escreva("|------ O somátorio dos números informados foi "+soma+ " --------| \n")
		escreva("|---------------------------------------------------------|")
	}

	funcao pularLinha() {
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 503; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */