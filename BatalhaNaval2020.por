/// FEITO POR FLÁVIO M. P. DE CORDIS
/// DATA: 20/10/2020

programa
{
	
	funcao inicio()
	{
		inteiro tabuleiro[8][8];
		inteiro tabuleiroTentativa[8][8];
		inteiro l, c, lAntigo=0, cont=0, cont1=0, acertos=0;

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
		escreva("\n")
		escreva("Legenda: \n 2 - ACERTO \n 4 - ERRO\n")

		/// COLOCANDO BARCOS EM ORDEM ALEATÓRIAS
		enquanto(cont<8){
		l = sorteia(0,7)
			enquanto(l==lAntigo){
				l = sorteia(0,7)
			}
		lAntigo = l
		
		c = sorteia(0,7)
		
		tabuleiro[l][c] = 1
		cont = cont++
		}
			

		/// CRIANDO UM LOOP COM NÚMERO DE RODADAS!
		inteiro rodada = 1
		enquanto (rodada<10){
			escreva("\n..::RODADA: ",rodada,"::..\n");
			escreva("Informe a posição a ser disparada: \n");
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
				tabuleiroTentativa[l][c] = 2;
				acertos = acertos++;
				rodada = rodada++;
			}
			senao se(tabuleiro[l][c] == 0){
				escreva("\nVOCÊ ERROU :( !\n");
				tabuleiroTentativa[l][c] = 4;
				rodada = rodada++;
			}
			senao se(tabuleiro[l][c] == 2){
				escreva("\nVOCÊ JÁ ACERTOU NESTE LOCAL! TENTE DENOVO.\n")
			}
			senao se(tabuleiro[l][c] == 4){
				escreva("\nVOCÊ JÁ CHUTOU NESTE LOCAL! TENTE DENOVO.\n")
			}

			para(l=0; l<8; l++){
				para(c=0;c<8;c++){
					se (c==7){
						escreva("[",tabuleiroTentativa[l][c],"]\n")
					}
					senao{
						escreva("[",tabuleiroTentativa[l][c],"]")
					}
					
				}
			}
		}

		se (acertos>3){
			escreva("\n\n")
			escreva("|========================================|\n")
			escreva("|                                        |\n")
			escreva("|  VOCÊ GANHOU COM ",acertos," DE 8 ACERTOS        |\n")
			escreva("|                                        |\n")
			escreva("|========================================|\n")
		}

		se (acertos<3){
			escreva("\n\n")
			escreva("|========================================|\n")
			escreva("|                                        |\n")
			escreva("|  VOCÊ PERDEU :(, ",acertos," DE 8 ACERTOS        |\n")
			escreva("|                                        |\n")
			escreva("|========================================|\n")
		}
	}
}
