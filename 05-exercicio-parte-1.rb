# Parte 1:
# Considere os métodos (as funções) escritos nos exercícios anteriores:
# Os métodos que calculam:
# - o diâmetro de um círculo é 2x o seu raio
# - o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
# - a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
# Escreva um programa que use esses métodos, porém, de tal forma que o valor do raio do círculo seja 
# perguntado ao usuário.

def calcula_diametro(raio)
    diametro = raio * 2
    return diametro
end

def calcula_comprimento(raio)
    comprimento = calcula_diametro(raio) * Math::PI
    return comprimento 
end

def calcula_area(raio)
    area = raio ** 2 * Math::PI
    return area
end

puts "Informe o raio"
raio = gets.to_f

puts "O diametro é " + calcula_diametro(raio).to_s
puts "O comprimento é " + calcula_comprimento(raio).to_s
puts "A área é " + calcula_area(raio).to_s



# Parte 2:
# Escreva um programa que pergunte o nome e a idade do usuário. 
# Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário viveu. Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do usuário como parâmetro.

# Para cada parte, escreva códigos que testem os programas escritos.
# Enviar 05-exercicio-parte-1.rb e 05-exercicio-parte-2.rb (editado) 