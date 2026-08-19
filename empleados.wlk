//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0
    //saldo = 0

    method sueldo() {
      return sueldo
    }

    method cambiarSueldo(_sueldo){
      sueldo = _sueldo
    }

    method gastar(cuanto){
      deuda = deuda + cuanto
      //saldo -= cuanto
    }

    method deuda(){
      return deuda
      //saldo.min(0).abs()
    }

    method dinero(){
      return dinero
      //saldo.max()
    }

    method cobrarSueldo() {
      if (deuda <= sueldo){
        dinero = sueldo - deuda
        deuda = 0
      }
      else{
        deuda = deuda - sueldo
        dinero = 0
      }
    }
}

object baigorria{
    var cantEmpanadasVendidas = 0
    const precioEmpanadas = 15
    var totalCobrado = 0
    method ventas(cantidad) {
      cantEmpanadasVendidas = cantEmpanadasVendidas + cantidad
    }

    method sueldo() {
      return cantEmpanadasVendidas * precioEmpanadas
    }

    method cobrarSueldo() {
      totalCobrado = totalCobrado + self.sueldo()
      cantEmpanadasVendidas = 0
    }

    method totalCobrado() {
      return totalCobrado
    }

}

object gimenez{
    var fondos = 3000

    method pagarSueldo(empleado) {
      fondos = fondos - empleado.sueldo()
      empleado.cobrarSueldo()
    }

    method fondos() {
      return fondos
    }
}