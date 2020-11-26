################################################
# Sequencia de comandos para construir um pacote
################################################

# Instalar o R, RStudio, rtools (Windows)
https://cran.r-project.org/bin/windows/base/ #R
https://rstudio.com/products/rstudio/download/ #RStudio
https://cran.r-project.org/bin/windows/Rtools/ #rtools


# No RStudio (Instalar pacotes necessarios)
pkgs <- c("devtools", "usethis", "roxygen2", "pkgdown")
## Instalando pacotes
install.packages(pkgs)

## Carregando pacotes

### Funcao carregar
carregar <- function(package){
  return(suppressMessages(require(package, character.only = TRUE)))
}

### Carregando
pkgs <- cbind(pkgs)
sapply(pkgs, carregar)



# Divulgacao do pacote

## Pacote necessario
require(usethis)

## Criando o arquivo README
use_readme_rmd()

## Criando o arquivo NEWS
?use_news_md()

## Criando Vignettes
use_vignette("construindo_website")


# Criando o site

## Criando a primeira vez
usethis::use_pkgdown()
pkgdown::build_site()

## Depois de criado e para atualização
pkgdown::build_site()
