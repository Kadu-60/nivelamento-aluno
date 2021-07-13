# Parte 2:
# Escreva um programa que pergunte o nome e a idade do usuário. 
# Escreva também uma função que calcula a quantidade de batimentos cardíacos
#  (uma estimativa) baseado na quantidade de dias que o usuário viveu. 
# Considere uma média de 80 batimentos por minuto. 
# Essa função deve receber a idade do usuário como parâmetro.

puts "Informe seu nome: "
nome = gets.chomp

puts "Informe sua idade em anos: "
idade = gets.to_f

def idade_anos_para_minutos(idade)
    idade_em_minutos = idade * 365 * 24 * 60
    return idade_em_minutos
end

def calcula_batimentos(idade)
    batimentos_totais = idade_anos_para_minutos(idade) * 80
    return batimentos_totais
end

puts nome + " teve aproximadamente " + calcula_batimentos(idade).to_s + " batimentos em " + idade.to_s + " anos"
