#Usando variaveis, escreva um programa que calcula e exiba na tela:
#- quantas horas há em um ano?
#- quantos minutos há em uma década?
#- qual é a sua idade em segundos?
#- quantos chocolates você pretende comer na vida?
#- Se minha idade é de 1232 milhões de segundos, qual é minha idade em anos?

segundo = 1
minuto = 60 
hora = 60 
dia = 24 
ano = 365 

puts "Em um ano há " + (ano * dia).to_s + " horas"
puts "Em uma década há " + (10 * ano * dia * hora).to_s + " minutos"
puts "Eu tenho " + (22 * ano * dia * hora * minuto * segundo).to_s + " segundos de idade"
puts "Pretendo comer " + (ano * 1 * 10).to_s + " chocolates"
puts "Se sua idade em segundos é 1232 milhões de segundos, em anos ela será " + (1232000000/ano / dia / hora / minuto / segundo).to_s