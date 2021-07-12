#Exercicio 03
#Escreva uma função (com parâmetros, variáveis locais e retorno, se necessários) para as seguintes necessidades abaixo:
#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função
#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função
#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função
#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função
#Para testar as funções, abaixo, escreva trechos de código que chamam essas funções algumas vezes, passando valores diferentes.
#Obs: Definam o nome do arquivo como 03-exercicio.rb

anos = 1
def calcula_anos_em_horas(anos)
    horas = anos * 24 * 365
    return horas
end

horas = calcula_anos_em_horas(anos)
puts horas.to_s + " horas em " + anos.to_s + " anos"

decadas = 1
def calcula_decadas_em_minutos(decadas)
    minutos = decadas * 10 * 365 * 24 * 60
    return minutos
end

minutos = calcula_decadas_em_minutos(decadas)
puts minutos.to_s + " minutos em " + decadas.to_s + " decadas"

idade = 22
def calcula_idade_em_segundos(idade)
    segundos = idade * 365 * 24 * 60 * 60
    return segundos
end

segundos = calcula_idade_em_segundos(idade)
puts segundos.to_s + " segundos em " + idade.to_s + " anos"

anos_em_segundos = 1232000000
def calcula_segundos_em_anos(anos_em_segundos)
    segundos_em_anos = anos_em_segundos / 60 / 60 / 24 / 365
end

segundos_em_anos = calcula_segundos_em_anos(anos_em_segundos)
puts segundos_em_anos.to_s + " anos em " + anos_em_segundos.to_s + " segundos"

puts ""

anos = 4
horas = calcula_anos_em_horas(anos)
puts horas.to_s + " horas em " + anos.to_s + " anos"

decadas = 3
minutos = calcula_decadas_em_minutos(decadas)
puts minutos.to_s + " minutos em " + decadas.to_s + " decadas"

idade = 33
segundos = calcula_idade_em_segundos(idade)
puts segundos.to_s + " segundos em " + idade.to_s + " anos"

anos_em_segundos = 1432000000
segundos_em_anos = calcula_segundos_em_anos(anos_em_segundos)
puts segundos_em_anos.to_s + " anos em " + anos_em_segundos.to_s + " segundos"