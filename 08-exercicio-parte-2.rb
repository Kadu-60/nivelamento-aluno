# 2) Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.
# Como o próprio nome diz, o MMC é o menor número inteiro que é múltiplo comum de outros números.
# Perguntar ao usuários os dois números inteiros que ele quer saber o MMC.
# Ex.:
# MMC 2, 3 = 6
# MMC 2, 10 = 10
# MMC 5, 8 = 40

puts "Digite 2 numeros para calcular o MMC "

puts "Digite o primeiro numero"
numero1 = gets.chomp

puts "Digite o segundo numero"
numero2 = gets.chomp

puts ""

def calcula_mmc(numero1 , numero2)


    x = numero1.to_i
    y = numero2.to_i

    if x.to_s != numero1 || y.to_s != numero2
        return "ERRO, digite somente numeros!"

    elsif x == 0 && y == 0
        return "O MMC é = 0"
    end

    while(y != 0)
        r = x % y
        x = y
        y = r
    end

    z = numero1.to_i * (numero2.to_i / x)

    return "O MMC é = " + z.to_s

end

puts calcula_mmc(numero1, numero2).to_s
