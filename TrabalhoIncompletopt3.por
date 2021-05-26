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
			inteiro dinheiro_gasto = 0
			real num_de_Dezena[16] 

			num_de_Dezena[6] = 4.50
			num_de_Dezena[7] = 31.50
			num_de_Dezena[8] = 126.00
			num_de_Dezena[9] = 378.00
			num_de_Dezena[10] = 9345.00
			num_de_Dezena[11] = 2079.00
			num_de_Dezena[12] = 4158.00
			num_de_Dezena[13] = 7722.00
			num_de_Dezena[14] = 13513.50
			num_de_Dezena[15] = 22522.50

			inteiro dezena = 0
			 
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
			
			escreva("\n*** Quantas dezenas deseja apostar? ***\n")
			leia(dezena)
			enquanto(dezena < 6 ou dezena > 15){
				escreva("Só é possível apostar de 6 a 15 dezenas. Tente novamente: \n")
				escreva("\n*** Quantas dezenas deseja apostar? ***\n")
				leia(dezena)
			}

			
			escreva("*** Quantas apostas deseja fazer?  ***\n")
			leia(num_de_Apostas)
			limpa()			

			//Faz o sorteio dos números
			para(inteiro k = 0; k < num_de_Apostas; k++){         
				 				
				 inteiro mega[15]
			      inteiro numSorteado

			      logico repetido = falso
			
			      para(inteiro i = 0; i < dezena; i++){
				  
				  faca {
					      numSorteado = sorteia(0, 60)
					      repetido = falso

					      para(inteiro u = 0; u < dezena; u++){
					 	     se(numSorteado == mega[u]){
					 		   repetido = verdadeiro
					 		   pare
		                     }
		                }
				}

				enquanto(repetido)

				mega[i] = numSorteado
		     }
		     //Organiza a aposta
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
               //Escreve a aposta
		     para(inteiro i=0; i < dezena; i++){
		     	escreva(mega[i], " ")

		      }

		      escreva("\n")
		}
          //Calculo do valor gasto
		real valorGasto = num_de_Dezena[dezena] * num_de_Apostas

		 escreva("Você gastou um total de: R$", valorGasto)

	

		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */