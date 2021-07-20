# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo como parâmetros 
# e que deve retornar um novo array sem o elemento da posição alvo que estava no array informado. 
# Se a posição alvo estiver fora do limite do array e apontar para o primeiro ou último elemento, 
# a função retorna o array inteiro.

def gera_array

    aux = 0
    puts "Digite o tamanho do array"
    tamanho = gets.to_i

    array = []

    while aux < tamanho
        array[aux] = rand(100)
        aux = aux + 1
        
    end

    return array



end

def remove_da_posicao(array, posicao_alvo)
    
    x = 0
    y = 0

    aux = []

    while y < array.size
        if y == posicao_alvo
            y = y + 1
            if y >= array.size
                return aux
            end
        end
      aux[x] = array[y]

      x = x + 1
      y = y + 1
      
    end
    return aux

end


array = gera_array
print array
puts ""
puts "Tamanho do array = " + array.size.to_s
puts "Digite a posição a ser excluida"
posicao_alvo = gets.to_i

array = remove_da_posicao(array, posicao_alvo)
print array
puts ""
puts "Tamanho do array = " + array.size.to_s



