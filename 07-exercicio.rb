# Tomando como base a 1a versão do jogo de adivinhação (24-jogo.rb), 
# fazer uma nova versão do jogo de adivinhação que consiga validar 
# se o valor digitado como chute do jogador é um dado válido ou não.
# Por exemplo, se o chute for um número fora do intervalo entre 0 e 100, 
# ou se não for um valor numérico,
# o programa deve imprimir na tela uma mensagem de que o chute é inválido.

puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

# computador pensando no número...
numero = rand(0..100)



chute = gets.chomp

verifica = chute.to_i



if verifica.to_s != chute || chute.to_i < 0 || chute.to_i > 100

    puts "ERRO, valor precisa ser um numero do intervalo de 0 a 100"

    elsif numero == chute
    puts "Acertou! O número é " + "(" + numero.to_s + ")"

    else
    puts "Errou! O número é " + "(" + numero.to_s + ")"
end
