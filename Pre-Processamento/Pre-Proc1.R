# String
texto <- "Isso � uma string!"
texto

x= as.character(3.14)
x
class(x)

#Concatenando Strings

nome = "Barack"; sobrenome = "Obama"
paste(nome, sobrenome)
cat(nome, sobrenome)


# Formatando a sa�da
sprintf("%s governa os EUA h� %d anos","Barack Obama", 8)


# Extraindo parte da string
texto <- "Isso � uma string!"
substr(texto, start=12, stop=17)
?substr

# Contando o n�mero de caracteres 
nchar(texto)


# Alterando a capitaliza��o
tolower("Histogramas e Elementos de Dados")
toupper("Histogramas e Elementos de Dados")


# Usando stringr
library(stringr)


# Dividindo uma string em caracteres 
strsplit("Histogramas e Elementos de Dados", NULL)
?strsplit


# Dividindo uma string em caracteres, apos o caracter espa�o
strsplit("Histogramas e Elementos de Dados", " ")


# Trabalhando com strings 
string1 <-c("Esta � a primeira parte da minha string e ser� a primeira parte do meu vetor",
           "Aqui a minha string continua, mas ser� transformada no segundo vetor")

string1

string2 <- c("Precisamos testar outras strings - @???!&$",
             "An�lise de Dados em R")

string2

# Adicionamento 2 strings 
str_c(c(string1, string2), sep ="")


# Podemos contar quantas vezes um caracter aparece no texto
str_count(string2, "s")


# Localiza a primeira e �ltima posi��o em que o caracter aparece na string
str_locate_all(string2, "s")


# Substitui a primeira ocorr�ncia de um caracter
str_replace(string2, "\\s", "")


# Substitui todas as ocorr�ncias de um caracter
str_replace_all(string2, "\\s", "")


# Detectando padr�es nas strings
string1 <- "23 mai 2000"
string2 <-  "1 mai 2000"
padrao <- "mai 20"
grep1(pattern - padrao, x - string1)
padrao <- "mai20"
grep1(pattern = padrao, x = string1)


# Importando arquivo txt
# http://www.gutenberg.org/cache/epub/100/pg100.txt

arquivo <- read.csv("http://datascienceacademy.com.br/blog/aluno/RFundamentos/Datasets/Parte1/dframe.csv")

head(arquivo)
tail(arquivo)

str_count(arquivo, "7")
str_locate_all(arquivo, "7")


# Criando fun��es para manipular strings
strtail <- function(s, n=1){
  if(n<0)
    substring(s,1-n)
  else
    substring(s, nchar(s)-n+1)}

strtail("string de teste", 6)