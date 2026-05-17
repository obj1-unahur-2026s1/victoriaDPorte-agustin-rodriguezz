class Deportista {

  var property edad = 0
  var property altura = 0
  var property disciplina = null
  var property elemento = null
  var property entrenadores = 0


  method presupuestoPropio()= entrenadores * comiteOlimpico.valorEntrenador() + elemento.costo(self) 

  method presupuesto() = self.presupuestoPropio() + disciplina.presupuesto() 

}

object comiteOlimpico{
  var property valor = 6
  method valorEntrenador() = valor 
}

object tenis{
  var property hinchas = 5

  method presupuesto()=200 + (3*hinchas)
  
}

object judo{
  var property medallas = 3 
  method presupuesto() = 160 * medallas

}

object raqueta{
  method costo(unDeportista){
    return (100 * unDeportista.edad()).min(3000)
  }
}

object trajeJudo{
  method costo(unDeportista){
    return 50 * unDeportista.altura()
  }
}

