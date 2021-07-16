# 1) Faça um programa para calcular a boa e velha tabuada.
# Pergunte ao usuário qual o número que ele quer o cálculo da taboada e imprima na tela os resultados.
# Por exemplo:
# Se o usuário digitar 7, deve imprimir dessa forma:
# 7 x 1 = 7
# 7 x 2 = 14
# 7 x 3 = 21
# ... até
# 7 x 10 = 70

puts "Digite um numero para calcular a taboada"
numero = gets.chomp.to_i
puts ""

def calcula_taboada(numero)
    if numero == 0
        return puts 0
    end
    x = 1
    while x <= 10
        puts numero.to_s + "x" + x.to_s + "=" + (x * numero).to_s
        x = x + 1
    end
end

calcula_taboada(numero)