# 3) Escreva uma função chamada "calcula_media" que deve receber um array de números 
# como parâmetro e deve retornar o valor da média aritmética entre todos os números do array.
     

def calcula_media(array)
    tamanho = array.size
    aux = 0

    for x in (0..tamanho-1)
        aux = aux + array[x]
    end

    return aux / tamanho.to_f
end


puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0

puts(calcula_media([1, 1,1,1,1]))
puts(calcula_media([115,85,9]))
puts(calcula_media([-111,222]))