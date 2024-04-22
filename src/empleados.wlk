
object galvan {
	var sueldo= 150000
	var dinero= 0
	var deuda= 0
	
	method sueldo() = sueldo
	method sueldo(nuevoSueldo){
		sueldo= nuevoSueldo
	}
	method cobrarSueldo(){
		dinero= dinero+ 0.max(sueldo - deuda)
		deuda= 0.max(deuda - sueldo)
	}
	method gastar(cuanto){
		deuda= 0.max(deuda + cuanto - dinero)
		dinero= 0.max(dinero- cuanto)
	}
	method totalDeuda()= deuda
	method totalDinero()= dinero
}

object baigorria {

	var empanadasVendidas= 0
	var totalCobrado= 0
	
	method sueldo() = 150* empanadasVendidas
	method empanadasVendidas() { return empanadasVendidas}
	method venderEmpanadas(numero){
		empanadasVendidas= empanadasVendidas + numero	
	}
	method cobrarSueldo(){
		totalCobrado= totalCobrado + self.sueldo()
		empanadasVendidas= 0
	}
	method totalCobrado() = totalCobrado
}

