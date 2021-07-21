# 2) Defina uma função chamada “negativos_positivos”, que deve receber um array de números 
# e que deve retornar outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos


def negativos_positivos(array)
    
    aux = []
    tamanho = array.size
    a = 0
    b = 0
    c = 0

    for x in (0..tamanho-1)
        if array[x] > 0
            a = a + 1
        elsif array[x] == 0
            b = b + 1
        elsif array[x] < 0
            c = c + 1
        end
    end

    aux[0] = a * 1.0 / tamanho 
    aux[1] = b * 1.0 / tamanho 
    aux[2] = c * 1.0 / tamanho 

    return aux
end
    

 print(negativos_positivos([1, 2, 0, -1]))
 print("\n")
 print(negativos_positivos([1, 2, 0, 22]))
 print("\n")
 print(negativos_positivos([0, 0, 0, 0]))
 print("\n")
 print(negativos_positivos([1, 2, 5, -1]))
 print("\n")
# # deve imprimir o array [0.5, 0.25, 0.25]
# # pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos