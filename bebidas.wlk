object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}
object terere {
    method rendimiento(cantidad) = 1.max(0.1 * cantidad)
}
object cianuro{
    method rendimiento(cantidad) = 0
}

object licuadoDeFrutas{
    const nutrientes = []
    method agregar(cantNutrientes) = nutrientes.add(cantNutrientes)
    method rendimiento(cantidad) = nutrientes.sum() * cantidad 
}

object aguaSaborizada{
    var bebida = terere
    method bebida(nueva){
        bebida = nueva
    }
    method rendimiento(cantidad) = 1 + bebida.rendimiento(cantidad)/4
}

object coctelSuave{
    const bebidas = [wisky]
    method agregar(bebida) {
        bebidas.add(bebida)
    }
    method quitar(bebida) {
        bebidas.remove(bebida)
    }   
    method rendimiento(cantidad){
        const bebidasAConsiderar = bebidas.filter({bebida => bebida.rendimiento(cantidad) > 0.5})
        return bebidasAConsiderar.sum({bebida=>bebida.rendimiento(cantidad)}) 
    }  
    method rendimientoBis(cantidad) = bebidas.filter({bebida => bebida.rendimiento(cantidad) > 0.5}).sum({bebida=>bebida.rendimiento(cantidad)})
    //se filtran las bebidas que tienen rendimiento mayor a 0.5 y luego se hace la suma de esas bebidas filtradas
}

//.sum({esto es un bloquqe})