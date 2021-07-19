# 1) Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer como parâmetros 
# e que deve retornar a posição da primeira ocorrência do valor no array. 
# Se o valor não existir no array, retornar -1.

def posicao_no_array(array, valor)
    for x in (0..array.size-1)
        if array[x] == valor
            return x
        end
        
    end
    return -1
end

array = [5, 6, 65, 234, 0, 3]

print array
puts ""
puts "Digite o valor a ser encontrado no array"
valor = gets.to_i

puts ""
puts posicao_no_array(array, valor)

array = [rand(100), rand(100), rand(100), rand(100), rand(100), rand(100), ]

print array
puts ""
puts "Digite o valor a ser encontrado no array"
valor = gets.to_i
puts ""

print posicao_no_array(array, valor)
