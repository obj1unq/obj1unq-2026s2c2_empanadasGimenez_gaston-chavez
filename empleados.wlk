//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0

    method sueldo(){
        return sueldo
    }

    method cambiarSueldo(_sueldo){
        sueldo = _sueldo
    }

    method gastar(cuanto) {
      if (dinero >= cuanto) {
        dinero = dinero - cuanto
      }
      else{
        deuda = cuanto - dinero
        dinero = 0
      }
    }

    method deudaCobrada(){
        if (deuda >= sueldo){
            deuda = deuda - sueldo
        }
        else {
            dinero = sueldo - deuda
            deuda = 0
        }
    }

    method deuda(){
        return deuda
    }

    method dinero(){
        return dinero
    }
}

object baigorria{
    var empanadasVendidas = 0
    const precioEmpanadas = 15
    var totalHastaAhora = 0


    method vender(cantidad){
        empanadasVendidas = empanadasVendidas + cantidad
    }

    method sueldo(){
        return empanadasVendidas * precioEmpanadas
    }

    method sueldoCobrado(){
        totalHastaAhora = totalHastaAhora + self.sueldo()
        empanadasVendidas = 0
    }

    method totalCobrado(){
        return totalHastaAhora
    }

}

object gimenez{
    var fondos = 300000

    method pagarSueldo(empleado) {
        fondos = fondos - empleado.sueldo()
    }
}