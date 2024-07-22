programa {
  /**
   * TODO:
   * 
   * Terminar a parte de fazer as possibilidades de vencer.
   */

  inteiro
      rodada = 1, a = 0, b = 0

  caracter
      mat[3][3], C

  funcao inicio() {
    iniciarTabuleiro()
    mostrarTabuleiro()

    escreva("\n")

    para (; rodada <= 9; rodada++) {
      se (rodada % 2 == 0) {
        C = 'X'
      } senao {
        C = 'O'
      }

      faca {
        faca {
          mostrarTabuleiro()

          escreva("A: ")
          leia(a)
          
          escreva("B: ")
          leia(b)
        }
        enquanto ((a < 1 ou a > 3) ou (b < 1 ou b > 3))
      }
      enquanto (mat[--a][--b] != ' ')
      
      mat[a][b] = C

      mostrarTabuleiro()
    }
  }

  funcao vazio iniciarTabuleiro() {
    para (a = 0; a < 3; a++) {
      para (b = 0; b < 3; b++) {
        mat[a][b] = ' '
      }
    }
  }

  funcao vazio mostrarTabuleiro() {
    limpa()

    escreva(" ", mat[0][0], " | ", mat[0][1], " | ", mat[0][2], "\n")
    escreva("---+---+---\n")
    escreva(" ", mat[1][0], " | ", mat[1][1], " | ", mat[1][2], "\n")
    escreva("---+---+---\n")
    escreva(" ", mat[2][0], " | ", mat[2][1], " | ", mat[2][2], "\n")
  }
}
