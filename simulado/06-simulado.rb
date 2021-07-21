# 6) Faça uma função chamada 'menor_maior' que recebe um array de números e que deve retornar outro array, 
# contendo apenas 2 elementos: o primeiro deve ser o menor número do array informado e o segundo deve ser o maior.

def menor_maior(array)
    tamanho = array.size
    aux = []
    aux[0] = array[0]
    aux[1] = array[0]

    for x in (0..tamanho-1)
        if array[x] < aux[0] 
            aux[0] = array[x]
        end
        if array[x] > aux[1]
            aux[1] = array[x]
        end
    end

    return aux
end



# #     Ex.:
      print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
      puts
      print(menor_maior([1,1,1,1,1,1,10000])) # deve imprimir [-500, 100]
      puts
      print(menor_maior([10000,1,1,1,1,1,])) # deve imprimir [-500, 100]
      puts
      print(menor_maior([222,2,2,2,3,3,4,5,111])) # deve imprimir [-500, 100]
      puts
     