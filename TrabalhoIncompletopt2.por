programa
{
	
	funcao inicio()
	{

	     inteiro opcao = 0
	
		escreva("***** Bem-Vindo *****\n")
		escreva("*********************\n")
		escreva("** Escolha um jogo **\n")
		escreva("*********************\n")
		escreva("**** 1-Mega-Sena ****\n")
		escreva("**** 2-Quina     ****\n")
		escreva("**** 3-Lotomania ****\n")
		escreva("**** 4-Lotofácil ****\n")
		escreva("*********************\n")

		escreva("\nSelecione um jogo: ")
		leia(opcao)

		limpa()

		escolha(opcao){

			caso 1:
			inteiro num_de_Apostas = 0
			real num_de_Dezena[10]
			inteiro dinheiro_gasto = 0

			escreva("***** Valor das apostas: *****\n")
			escreva("*****    6 - R$4,50      *****\n")
			escreva("*****    7 - R$31,50     *****\n")
			escreva("*****    8 - R$126,00    *****\n")
			escreva("*****    9 - R$378,00    *****\n")
			escreva("*****   10 - R$9345,00   *****\n")
			escreva("*****   11 - R$2.079,00  *****\n")
			escreva("*****   12 - R$4.158,00  *****\n")
			escreva("*****   13 - R$7.722,00  *****\n")
			escreva("*****   14 - R$13.513,50 *****\n")
			escreva("*****   15 - R$22.522,50 *****\n")
			escreva("Quantas dezenas deseja apostar?\n")
			
			limpa()
			
			escreva("*** Quantas apostas deseja fazer? ***\n")
			leia(num_de_Apostas)
			limpa()

			dinheiro_gasto = 0

			//Numeros Apostados
			inteiro nums_Escolhidos[6]

			para(inteiro i = 0; i < 6; i++){
				 escreva("Quais são os números que deseja escolher? ")
				 leia(nums_Escolhidos[i])
				 limpa()

		}

			para(inteiro k = 0; k < num_de_Apostas; k++){

				 inteiro nums_Apostados[6]				 				
				 inteiro mega[6]
			      inteiro numSorteado

			      logico repetido = falso
			
			      para(inteiro i=0; i < 6; i++){
				  
				  faca {
					      numSorteado = sorteia(0, 60)
					      repetido = falso

					      para(inteiro u = 0; u < 6; u++){
					 	     se(numSorteado == mega[u]){
					 		   repetido = verdadeiro
					 		   pare
		                     }
		                }
				}

				enquanto(repetido)

				mega[i] = numSorteado
		     }
		     inteiro auxiliar = 0

		     para(inteiro i = 0; i < 6; i++){
		     	para(inteiro u = i + 1; u < 6; u++){
		     		se(mega[u] < mega[i]){
		     			auxiliar = mega[i]
		     			mega[i] = mega[u]
		     			mega[u] = auxiliar

		                }
		           }
		     }

		     para(inteiro i=0; i < 6; i++){
		     	escreva(mega[i], " ")

		      }

		      escreva("\n")
		}

		}
	}

	funcao sorteio(){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1685; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */