# 3) Defina uma função “altura_escada” que deve receber um número inteiro para 
# representar a altura da escada e deve retornar um array de strings para representar graficamente a escada.
# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. 
# Caso contrário, a função deve retornar um array vazio.

def altura_escada(altura)
    aux1 = ["#"]
    aux2 = ["_"]
    escada = []

    if altura < 1
        return escada
    else

        for coluna in (0..altura-1)
            escada[coluna] = ""
            for linha in (1..altura-1-coluna)
                escada[coluna] = escada[coluna] + aux2[0]
            end
            for linha in (0..coluna)
                escada[coluna] = escada[coluna] + aux1[0]
            end
        end


        
    end
    return escada
end
            

                


# Ex.:
 puts(altura_escada(1))
# # deve imprimir
# #
 puts(altura_escada(2))
# # deve imprimir
# _#
# ##
 puts(altura_escada(3))
# # deve imprimir
# __#
# _##
# ###
 puts(altura_escada(5))
# # deve imprimir
# ____#
# ___##
# __###
# _####
# #####
 puts(altura_escada(0))
# # deve imprimir nada, pois tem que retornar um array vazio