# 5) O número PI ou 3.14159... pode ser obtido através de várias fórmulas. 
# Uma forma simples de obtê-lo é pela fórmula de Leibniz, que diz que a convergência da seguinte 
# série infinita é igual a PI:
# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...
# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem 
# usados na fórmula de Leibniz para obter o valor de PI. O resultado do cálculo deve ser retornado pela função.
# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. 
# Se a validação falhar, a função retorna nil.
# OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!

def calcula_pi(numero_termos)
    aux = 1.0
    array = []
    pi = 0
    if numero_termos != numero_termos.to_i || numero_termos < 1
        return nil
    else 
        for x in (0..numero_termos-1)
            array[x] = 4.0 / aux
            aux = aux + 2
        end
        for y in (0..numero_termos-1)
            if y % 2 != 1
                pi = pi + array[y]
            else 
                pi = pi - array[y]
            end
        end
        return pi


    end
end



# Ex:
 puts(calcula_pi(4))
# # deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# # note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.
