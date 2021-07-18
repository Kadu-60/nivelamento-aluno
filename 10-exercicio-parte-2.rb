# 2) Esse aqui é um desafio. Faça um código para obter esse resultado:
#         *
#         **
#         ***
#         ****
#         *****
#         ******
#         *******
#         ********
#         *********
#         **********
# Enviar 10-exercicio-parte-2.rb


def imprime_desenho
    x = 1
    z = 1
    while x <= 10
        while z > 0
            print "*"
            z = z - 1
        end
        puts ""
        x = x + 1
        z = x
    end
end

imprime_desenho