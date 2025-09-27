import huevosDePascua.*

// ============ ANA ============
object ana {
    
    const huevosComidos = []
    

    method comerHuevo(unHuevo) {
        huevosComidos.add(unHuevo)
    }
    method estaEnfermo() = self.consumioMasDe5000() || self.hayAlgunoDeChocolateBlanco()

    method consumioMasDe5000() = huevosComidos.sum{h=>h.calorias()} > 5000

    method hayAlgunoDeChocolateBlanco() = huevosComidos.any({h=>h.esDeChocolateBlanco()}) 

}
// ============ JOSE ============
object jose {

var ultimoHuevoComido = huevoMixto

    method comer(unHuevo) {
        ultimoHuevoComido = unHuevo
    }

    method estaEnfermo() = ultimoHuevoComido.esDeChocolateAmargo()
}
// ============ TITO ============
object tito {

    method comer(unHuevo) {}

    method estaEnfermo() = false

}