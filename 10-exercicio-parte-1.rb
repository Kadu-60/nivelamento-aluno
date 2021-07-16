# 1) Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.
# Enviar 10-exercicio-parte-1.rb


def desenha_quadrado
    x = 10
    y = 10

    while x > 0
        while y > 0
            if y == 1
            puts "*"

            elsif x == 1 || x == 10 || y == 10

            print "*"

            else 
            print "x"
            end
            
            y = y - 1
        end

        y = 10
        x = x - 1
    end
end

desenha_quadrado









