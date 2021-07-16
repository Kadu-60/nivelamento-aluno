# A partir da versão 2 do jogo de adivinhação, faça uma nova versão em que o jogador receba a informação, 
# após chutar o número, se o chute foi maior ou menor que o número pensado. A seguir, ele ganha uma nova tentativa, 
# de modo que o jogo somente vai terminar quando ele acertar.
# Ao final, após acertar, informe o número de tentativas que o jogador teve para acertar.
# Observação: valide o chute do jogador, ignorando a tentativa caso ele informe um numero invalido.

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"


# computador pensando no número...
numero = rand(0..100)



# chute = gets.chomp

def verifica_chute(chute)
    verifica = chute.to_i

    if verifica.to_s != chute || chute.to_i < 0 || chute.to_i > 100

        return 0
    
    end
end


def jogo_adivinhacao(numero)

    x = 0
    y = 0

    while x == 0
        chute = gets.chomp

        if verifica_chute(chute) == 0

            puts "ERRO, valor precisa ser um numero do intervalo de 0 a 100"

            elsif numero == chute.to_i
                x = 1
                y = y + 1
                puts "Acertou! O número é " + "(" + numero.to_s + ")"
                puts "Seu numero de tentativas validas foi = " + y.to_s

            elsif chute.to_i > numero 
                y = y + 1
                puts "Errou! O chute foi maior que o numero"

            elsif chute.to_i < numero
                y = y + 1
                puts "Errou! O chute foi menor que o numero"
            
        end
    end
end

jogo_adivinhacao(numero)