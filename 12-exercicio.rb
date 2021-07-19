# Fazer uma função chamada 'insere_no_array' que recebe um array, 
# um valor qualquer e a posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, 
# de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. 
# Se a posição alvo não estiver no limite do array, a função deve retornar false.

def insere_no_array(array, valor, posicao_alvo)
    tamanho = array.size
    x = 0

    if posicao_alvo > tamanho || posicao_alvo < 0
        return false
    else while tamanho > posicao_alvo
        array[tamanho] = array[tamanho - 1]
        tamanho = tamanho - 1
        end
        array[posicao_alvo] = valor
        return 1
    end
end

array = [1,2,3,4,5,6,7]

print array
puts ""

puts "valor"
valor = gets.to_i

puts "posicao"
posicao_alvo = gets.to_i

print insere_no_array(array, valor, posicao_alvo)
print array
    