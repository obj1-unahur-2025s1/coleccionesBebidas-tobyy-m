import bebidas.*
object tito{
   var rendimiento = 0
   method peso() =70
   method velocidad() = ((490 * rendimiento) / self.peso())
   method consumir(cantidad, bebida){
    rendimiento = bebida.rendimiento(cantidad)
   }
   method rendimiento() = rendimiento
}
