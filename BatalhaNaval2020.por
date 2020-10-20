/// FEITO POR FLÁVIO M. P. DE CORDIS
/// DATA: 20/10/2020

programa
{
	
	funcao inicio()
	{
		inteiro tabuleiro[8][8];
		inteiro l, c, navio, cont=0, acertos=0;

		/// COLOCANDO TODOS VALORES DO TABULEIRO COMO 0!
		para(l=0;l<8;l++){
			para(c=0;c<8;c++){
				tabuleiro[l][c] = 0
				}
			}

		escreva("++++++ BATALHA NAVAL! ++++++\n")
		escreva("============================\n")
		escreva("ACERTE 4 OU MAIS PARA GANHAR!\n")
		escreva("============================")

		/// COLOCANDO BARCOS EM ORDEM ALEATÓRIAS
		enquanto(cont<8){
		l = sorteia(0,7)
		c = sorteia(0,7)
		tabuleiro[l][c] = 1
		cont = cont++
		}

		/// CRIANDO UM LOOP COM NÚMERO DE RODADAS!
		inteiro rodada = 1
		enquanto (rodada<10){
			escreva("\n..::RODADA: ",rodada,"::..\n");
			escreva("Informe os espaços a serem inseridos: \n");
			escreva("Linha: ");
			leia(l);
			escreva("Coluna: ");
			leia(c);

			/// VERIFICAR SE O VALOR INSERIDO FOI CERTO!
			se ((l < 0) e (l < 7)){
				escreva("\nLINHA INSERIDA INVÁLIDA! INSIRA ENTRE 0-7")
				escreva("\nLinha: ");
				leia(l);
			}

			se ((c < 0) e (c < 7)){
				escreva("\nColuna INSERIDA INVÁLIDA! INSIRA ENTRE 0-7")
				escreva("\nColuna: ");
				leia(c);
			}

			/// VERIFICANDO OS LOCAIS CHUTADOS!
			se (tabuleiro[l][c] == 1){
				escreva("\nVOCÊ ACERTOU!\n");
				tabuleiro[l][c] = 2;
				acertos = acertos++;
				rodada = rodada++;
			}
			senao se(tabuleiro[l][c] == 0){
				escreva("\nVOCÊ ERROU :( !\n");
				tabuleiro[l][c] = 4;
				rodada = rodada++;
			}
			senao se(tabuleiro[l][c] == 2){
				escreva("\nVOCÊ JÁ ACERTOU NESTE LOCAL! TENTE DENOVO.\n")
			}
			senao se(tabuleiro[l][c] == 4){
				escreva("\nVOCÊ JÁ CHUTOU NESTE LOCAL! TENTE DENOVO.\n")
			}
		}

		se (acertos>3){
			escreva("|========================================|")
			escreva("|                                        |")
			escreva("|VOCÊ GANHOU COM ",acertos," DE 8 ACERTOS|")
			escreva("|                                        |")
			escreva("|========================================|")
		}

		se (acertos<3){
			escreva("|========================================|")
			escreva("|                                        |")
			escreva("|VOCÊ PERDEU :(, ",acertos," DE 8 ACERTOS|")
			escreva("|                                        |")
			escreva("|========================================|")
		}
	}
}
