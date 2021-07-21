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
















def sortear_numeros(qtd, limite_inicio, limite_fim)
    # implemente aqui!
    aux = []
    array = []

    for x in (limite_inicio..limite_fim)
        aux[x-1] = x
    end

    for y in (1..qtd)
        tamanho = aux.size
        posicao = rand(tamanho) - 1
        array[y-1] = aux[posicao]
        aux = remove_da_posicao(aux, posicao)
    end

    return array

end

def recebe_aposta(limite_inicio, limite_fim)
    resposta = gets.chomp
    confirma = resposta.to_i
    verifica = 0
    while verifica == 0
        if resposta != confirma.to_s || confirma < limite_inicio || confirma > limite_fim
            puts "Escolha somente os numeros permitidos"
            resposta = gets.chomp
            confirma = resposta.to_i
        else 
            return resposta.to_i
        end
    end

    return resposta.to_i
end


def obter_apostas(qtd, limite_inicio, limite_fim)
    # implemente aqui!
    array = []
    aux = []
    for x in (limite_inicio..limite_fim)
        aux[x-1] = x
    end
    puts "Digite os numeros da aposta, escolha " + qtd.to_s + "numeros entre " + limite_inicio.to_s + " e " + limite_fim.to_s
    puts "Digite um numero por vez"
    for y in (1..qtd)
        posicao = recebe_aposta(limite_inicio, limite_fim) - 1
        array[y-1] = aux[posicao]
        aux[posicao] = nil
        if array[y-1] == nil
            while array[y-1] == nil
                puts "Numero ja usado, escolha outro"
                posicao = recebe_aposta(limite_inicio, limite_fim) - 1
                array[y-1] = aux[posicao]
            end
        end
    end

    return array

end

def verificar_acertos(sorteados, apostados)
    tamanho_sorteados = sorteados.size
    tamanho_apostados = apostados.size
    aux = []
    z = 0
    for x in (1..tamanho_sorteados)
        for y in (1..tamanho_apostados)
            if sorteados[x-1] == apostados[y-1]
                aux[z] = apostados[y-1]
                z = z + 1
            end
        end
    end

    return aux
end

def mega_sena()
         sorteados = sortear_numeros(6, 1, 60)
     apostados = obter_apostas(6, 1, 60)
     acertados = verificar_acertos(sorteados, apostados)
     puts "Numeros sorteados: #{sorteados.to_s()}"
     puts "Numeros apostados: #{apostados.to_s()}"
     puts "Acertos: #{acertados.to_s()}"
 end
mega_sena()


