# 2) Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.
# Como o próprio nome diz, o MMC é o menor número inteiro que é múltiplo comum de outros números.
# Perguntar ao usuários os dois números inteiros que ele quer saber o MMC.
# Ex.:
# MMC 2, 3 = 6
# MMC 2, 10 = 10
# MMC 5, 8 = 40

puts "Digite o primeiro numero"
numero1 = gets.chomp.to_i

puts "Digite o segundo numero"
numero2 = gets.chomp.to_i

def calcula_mmc(numero1 , numero2)
    x = numero1
    y = numero2
    while(y != 0)
        r = x % y
        x = y
        y = r
    end

    z = numero1 * (numero2 / x)

    return z

end

puts "O MMC é " + calcula_mmc(numero1, numero2).to_s
