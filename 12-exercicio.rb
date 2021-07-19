# Fazer uma função chamada 'insere_no_array' que recebe um array, 
# um valor qualquer e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, 
# de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. 
# Se a posição alvo não estiver no limite do array, a função deve retornar false.

def insere_no_array(array, valor, posicao_alvo)
    tamanho = array.size

    if posicao_alvo >= tamanho || posicao_alvo < 0
        return false
    else while tamanho > posicao_alvo
        array[tamanho] = array[tamanho - 1]
        tamanho = tamanho - 1
        end
        array[posicao_alvo] = valor
        return true
    end
end

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

array = gera_array

print array
puts ""

puts "Digite o valor a ser inserido"
valor = gets.to_i

puts "Digite a posição em que o valor será inserido"
posicao_alvo = gets.to_i

insere_no_array(array, valor, posicao_alvo)
print array
    