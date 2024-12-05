programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t

	caracter alfabeto[26] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	
	funcao inicio()
	{
		
  		inteiro chave
  		cadeia palavra, opcao

  		escreva("Você quer descriptografar ou criptografar?\n")
  		leia(opcao)

  		se (opcao == "criptografar") {
  			
  			escreva("Informe uma palavra em maiúsculo: ")
    			leia(palavra)
			
    			escreva("Informe um número chave: ")
     		leia(chave)

			se(chave > 0 e chave < 27) {
				criptografar(palavra, chave)
			}
  		
  		} senao se (opcao == "descriptografar") {
  			
  			escreva("Informe uma palavra em maiúsculo: ")
    			leia(palavra)
			
    			escreva("Informe um número chave: ")
     		leia(chave)

			se(chave > 0 e chave < 27) {
				descriptografar(palavra, chave)
			}
  		}
     }
      
	funcao criptografar(cadeia palavra, inteiro chave){
      	
		inteiro posicao = 0
      	
      	para(inteiro i=0; i < t.numero_caracteres(palavra); i++){
			caracter letra = t.obter_caracter(palavra, i)
      	
      		para(inteiro j=0; j < 26; j++){
      			se(letra == alfabeto[j]){
      				posicao = (j + chave) % 26

 					escreva(alfabeto[posicao])
      			}
      		}
      	}
  	}

	funcao descriptografar(cadeia palavra, inteiro chave){
      	
		inteiro posicao = 0
      	
      	para(inteiro i=0; i < t.numero_caracteres(palavra); i++){
			caracter letra = t.obter_caracter(palavra, i)
      	
      		para(inteiro j=0; j < 26; j++){
      			se(letra == alfabeto[j]){
      				posicao = (j - chave) % 26
      				
      				se (posicao < 0) {
      					posicao = posicao + 26
      				}
      				
 					escreva(alfabeto[posicao])
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
 * @POSICAO-CURSOR = 896; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */