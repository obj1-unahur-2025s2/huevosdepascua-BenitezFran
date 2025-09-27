// ============ HUEVO REPOSTERO ============
object huevoRepostero {
    
    method esDeChocolateBlanco() = true 
    method esDeChocolateAmargo() = false 

    method calorias() = 750
}

// ============ HUEVO MIXTO ============
object huevoMixto {

    method esDeChocolateBlanco() = true 
    method esDeChocolateAmargo() = false 

    method calorias() = 90
}

// ============ CONEJO ============
object conejo {

var property peso = 2.max(0)

    method esDeChocolateBlanco() = false 
    method esDeChocolateAmargo() = true 

    method calorias() = peso * 10

}

// ============ BLISTER DE HUEVITOS ============
object blisterHuevitos {

var property huevitos = 3

    method esDeChocolateBlanco() = huevitos >= 5 
    method esDeChocolateAmargo() = false 
    method calorias() = huevitos * 100 + huevitos.div(5) * 150
}

// ============ MATRIOSHKA ============
object matrioshka {

var property huevoEnSuInterior = huevoMixto
var caloriaBase = 3000
var decoracionActual = arbol

    method decoracion(unaDecoracion) {
        decoracionActual = unaDecoracion
    }

    method esDeChocolateBlanco() = huevoEnSuInterior.esDeChocolateBlanco() 
    method esDeChocolateAmargo() = true 

    method calorias() = caloriaBase + decoracionActual.caloriasDecoracion() + huevoEnSuInterior.calorias()
}
// Decoracion arbol
object arbol {

    method caloriasDecoracion() = 150 
}
// Decoracion flor
object flor {

var property petalos = 4.max(0)

    method caloriasDecoracion() = 100 * petalos
}
