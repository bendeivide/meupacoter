#' Operacoes Matematicas Basicas
#'
#' \code{aritmetica} resolve operacoes como: soma, subtracao,
#'     divisao e multiplicacao.
#' @param a primeiro numero
#' @param b segundo numero
#' @param op operacao matematica
#' @return A funcao \code{aritmetica} realiza as quatro operacoes basicas.
#'     A opcoes para o argumento \code{op} sao "soma", "divisi",
#'     "multi", "subtra"
#' @examples
#' # Loading package
#' library(meupacoter)
#' aritmetica(8, 4, op = "divisi")
#' aritmetica(8, 4, op = "soma")
#' aritmetica(8, 4, op = "subtra")
#' aritmetica(8, 4, op = "multi")
#' @export
aritmetica <- function(a, b, op) {
  # op: divisi, multi, soma, subtra
  if (op == "divisi") x <- divisi(a, b)
  if (op == "multi") x <- multi(a, b)
  if (op == "soma") x <- soma(a, b)
  if (op == "subtra") x <- subtra(a, b)
  return(x)
}
