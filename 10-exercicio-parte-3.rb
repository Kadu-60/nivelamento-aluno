# 3) Desenhar uma pirâmide. O tamanho da base deve ser informado. 
# Se o tamanho da base for numero par, o topo terá "**", se for ímpar "*". 
# Então, cada nível é preenchido até que o nível da base tenha o mesmo número de "*" que o número informado.
#     **
#    ****
#   ******
#  ********
# **********
#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************
# Enviar como 10-exercicio-parte-3.rb

puts "Informe o tamanho da base da piramide"
base = gets.chomp.to_i

def imprime_desenho(base)
    x = 1
    z = 1
    
    if base.even? == false
        puts "*"
    
        while x < base
            while z > 0
                print "**"
                z = z - 2
            end
            print "*"
            puts ""
            x = x + 2
            z = x
        end
    else
        while x <= base
            while z > 0
                print "**"
                z = z - 2
            end
            puts ""
            x = x + 2
            z = x
        end
    end
end

imprime_desenho(base)

