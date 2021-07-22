# 1) Defina uma função chamada “produto”, que deve receber um array de números e que deve 
# retornar o produto resultante entre eles (a multiplicação de todos os elementos entre si).

def produto(array)
    tamanho = array.size
    resultado = 1

    for x in (0..tamanho-1)
        resultado = resultado * array[x]
    end
    return resultado

end




# Ex.:
 puts(produto([1, 4, 7]))               # deve imprimir 28
 puts(produto([10, 100, 1000, 0, -1]))  # deve imprimir 0
