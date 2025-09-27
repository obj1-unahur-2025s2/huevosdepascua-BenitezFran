import chicos.*
import huevosDePascua.*

// ============ CACERIA ============
object caceria {

const huevosNoEncontrados = []
const huevosEncontrados = []

    method inizializarJuego() {
        flor.petalos(7)
        blisterHuevitos.huevitos(14)
        matrioshka.decoracion(flor)
        matrioshka.huevoEnSuInterior(blisterHuevitos)

        huevosNoEncontrados.addAll([matrioshka,huevoRepostero,conejo,huevoMixto])
    }

    method cantidadPorEncontrar() = huevosNoEncontrados.size()
    method cuantosConChocolatesBlancos() = huevosEncontrados.count({h => h.esDeChocolateBlanco()})
    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo)
    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comer(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }
    method encontrarElPimerHuevo(unChico) {
        self.encontrarUnHuevoPor(unChico, huevosNoEncontrados.first())
    }
    method encontrarLosRestantes(unChico) {
        huevosNoEncontrados.forEach({h => self.encontrarUnHuevoPor(unChico, h)})
    }

    method huevosEncontradosBlancos() = huevosEncontrados.filter({h => h.esDeChocolateBlanco()})

    method huevosEncontradosDeMayorCaloria() = huevosEncontrados.max({h => h.calorias()})
}