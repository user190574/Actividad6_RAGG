import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/

infix operator +++

func +++ (a:Int, b:Int) -> Double
{
    let potencia_a = Double(a)
    let potencia_b = Double(b)
    
    return pow(potencia_a, potencia_b)
}
7 +++ 10

//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor

var coleccion = [2,5,3,4]
prefix operator |>
prefix func |> (coleccion:Array<Int>) -> Array<Int>
{
    return coleccion.sorted()
}
|>coleccion

/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/

class ConjuntoDatos
{
    var valor:[Int]
    init(v:[Int])
    {
        self.valor = v
    }
    subscript (idx: Int) -> Int
    {
        get
        {
            return valor [idx]
        }
        set(nuevoValor)
        {
            valor[idx] = valor[idx]; nuevoValor
        }
    }
}
let valor1 = ConjuntoDatos(v:coleccion)

valor1[2]
valor1[3] = 7
coleccion
valor1.valor

//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps

struct posicion
{
    var posicion:CGPoint
    init(p:CGPoint)
    {
        self.posicion = p
    }
    subscript(idx:Int) -> CGPoint
    {
        get
        {
            return self.posicion
        }
        set(newValue)
        {
            self.posicion = newValue
        }
    }
}

var position = posicion (p: CGPoint(x: 7.0, y: 10.0))
position.posicion
position.posicion = CGPoint (x: 7.0, y: 10.0)

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/

var coleccion2 = ["A":1,"B":2,"C":3]

func ExisteValor (buscarvalor:String)
{
    guard let existe = coleccion2 [buscarvalor] else
    {
        print("NO EXISTE EL VALOR")
        return
    }
    print("existe \(existe)")
}
ExisteValor(buscarvalor: "A")
coleccion2 ["F"]
