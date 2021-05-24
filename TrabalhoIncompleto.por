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

		inteiro dezenas
		inteiro num_Apostas
		inteiro mega[6]
		
		escolha(opcao){

			caso 1:
						
			escreva("****Valor das apostas: ********\n")
			escreva("*******************************\n")
			escreva("****   6 - R$4,50        ******\n")
			escreva("****   7 - R$31,50       ******\n")
			escreva("****   8 - R$126,00      ******\n")
			escreva("****   9 - R$378,00      ******\n")
			escreva("****  10 - R$945,00      ******\n")
			escreva("****  11 - R$2.079,00    ******\n")
			escreva("****  12 - R$4.158,00    ******\n")
			escreva("****  13 - R$7.722,00    ******\n")
			escreva("****  14 - R$13.513,50   ******\n")
			escreva("****  15 - R$22.522,50   ******\n")
			escreva("*******************************\n")
			escreva("\nQuantas dezenas deseja apostar? ")
			leia(dezenas)
			
			enquanto(dezenas < 6 ou dezenas > 15){
				escreva("Só é possível apostar de 6 a 15 dezenas, tente novamente")
				escreva("\nQuantas dezenas deseja apostar? ")
			     leia(dezenas)
			}
			
			escreva("\nQuantas vezes deseja apostar? ")
			leia(num_Apostas)
			
			limpa()

			para(inteiro vezes_jogadas = 0; vezes_jogadas < num_Apostas; vezes_jogadas++){
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
		     

		}

		ordenar(mega, 6)    

		para(inteiro i=0; i < 6; i++){
			escreva(mega[i], " ")

		  }
		      
	    }
	     
	}

	funcao sorteio(inteiro tipo_Jogo[], inteiro num_Apostas){
		para(inteiro k = 0; k < num_Apostas; k++){
				 	
			      inteiro numSorteado

			      logico repetido = falso
			
			      para(inteiro i=0; i < 6; i++){

				      faca {
					      numSorteado = sorteia(0, 60)
					      repetido = falso

					      para(inteiro u = 0; u < 6; u++){
					 	     se(numSorteado == tipo_Jogo[u]){
					 		   repetido = verdadeiro
					 		   pare
		                     }
		                }
				}

				enquanto(repetido)

				tipo_Jogo[i] = numSorteado
		     }

		}
	}

	funcao ordenar(inteiro numeros[], inteiro tamanho_Vetor){
		inteiro auxiliar = 0

		     para(inteiro i = 0; i < tamanho_Vetor; i++){
		     	para(inteiro u = i + 1; u < tamanho_Vetor; u++){
		     		se(numeros[u] < numeros[i]){
		     			
		     			auxiliar = numeros[i]
		     			numeros[i] = numeros[u]
		     			numeros[u] = auxiliar

		                }
		           }
		     }
	}

	funcao valor_gasto(inteiro num_Apostas, real valor_dezenas[]){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2143; 
 * @DOBRAMENTO-CODIGO = [95, 140];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */