# 5) Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.
# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série 
# (usar a função sort()) e retornar:
# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre 
# os números das posições (n/2)-1 e (n/2)

def mediana(array)
    aux = array.sort
    tamanho = array.size

    if tamanho % 2 == 0
        media = (aux[tamanho/2] + aux[(tamanho/2)-1]) / 2.0
        return media
    else 
        return aux[tamanho/2] * 1.0
    end

    
end





# Ex.:
print(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
puts ""
print(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0
puts ""
print(mediana([10, 10,10,10])) 
puts ""
print(mediana([10, 10,10,10,10]))     
puts ""
print(mediana([10, 100,456,1000,999])) 
puts ""
print(mediana([10, -1, -500, 20]))      