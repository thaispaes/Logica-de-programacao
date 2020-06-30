programa
{

	//Variáveis 
	inteiro opcao=0,sair=1,logout=1
	real valorSaque=0.0,valorDeposito=0.0
	real dinheiroConta=100.00
 	inteiro senha=123456, conta=1234

	funcao login(){
		escreva("|                                                     |\n")
		escreva("|  Insira a sua senha --> ")
		leia(senha)
		escreva("|  Insira a sua conta --> ")
		leia(conta)
	}
	
	funcao menu(){
		escreva("|=====================================================|\n")
		escreva("|           Bem Vindo a sua conta Usuário             |\n")
		escreva("|    Escolha uma das opções abaixo para realizar      |\n")
		escreva("|        Digite '1' para saque ou '2' deposito        |\n")
		escreva("|     Caso deseje saber apenas o saldo digite '3'     |\n")
		escreva("|-----------------------------------------------------|\n")
		escreva("|------ Digite o que deseja --> ")
		leia(opcao)
		escreva("|                                                     |\n")
		escreva("|=====================================================|\n")
	}

	funcao saldo(){
		escreva("|---------------------------------------------|\n")
		escreva("| O seu saldo atual da conta é "+dinheiroConta+"R$ \n")
		escreva("|                                             |\n")
		escreva("|---------------------------------------------|\n")
		saida()
		limpa()
	}
	funcao deposito(){
		escreva("|---------------------------------------------|\n")
		escreva("| Informe o quanto quer depositar --> ")
		leia(valorDeposito)
		dinheiroConta=dinheiroConta+valorDeposito
		escreva("|                                             |\n")
		escreva("|--- Seu deposito foi realizado com sucesso---|\n")
		escreva("|---------------------------------------------|\n")
		saida()
		
	}
	funcao saque(){
		escreva("|---------------------------------------------|\n")
		escreva("| Informe o quanto quer sacar --> ")
		leia(valorSaque)
		escreva("|                                             |\n")
		verificarSaque()
		escreva("|------- Saque realizado com sucesso ---------|\n")
		escreva("|---------------------------------------------|\n")
		saida()
		
	}
	funcao saida(){
		escreva("|==============================================|\n")
		escreva("|     Deseja realizar mais alguma operação?    |\n")
		escreva("| Digite '1' para sim e outro número para não -> ")
		leia(sair)
			se (sair!=1){
				escreva("|     Obrigado por utilizar a aplicação        |\n")
				escreva("===============================================|")
			}senao
			limpa()
	}

	funcao real verificarSaque(dinheiroConta){
		se (valorSaque>dinheiroConta ){
			enquanto (valorSaque>dinheiroConta){
				escreva("| O valor informado não é válido para o saque |\n")
				escreva("|Precisa ser menor ou igual ao valor na conta |\n")
				escreva("|                                             |\n")
				escreva("| Informe um novo valor --> ")
				leia(valorSaque)
			}		
		}
		dinheiroConta=valorSaque-dinheiroConta
		retorne dinheiroConta
	}
	funcao inicio()
	{	
		enquanto (logout==1){
			escreva("|=====================================================|\n")
			escreva("|-------- Bem vindo ao nosso caixa eletrônico --------|\n")
			login()
			escreva("|=====================================================|\n")
			limpa()
			
				enquanto (sair==1){
					menu()
					limpa()
		
					escolha (opcao){
						caso 1:
							saque()
				
						pare
						caso 2:
							deposito()
					
						pare
						caso 3:
							saldo()
						pare
						caso contrario:
							escreva("------------ O valor inserido é inválido ------------|\n")
							escreva("----- Digite '1' para retornar ao menu de antes -----|\n")
							leia(sair)
						pare
				}
			}
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1026; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */