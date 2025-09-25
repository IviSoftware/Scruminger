import Foundation
import SwiftUI

//Por defecto un Label, SwiftUI decide cómo ordenarlos (icono a la izquierda, texto a la derecha).

//SwiftUI provee protocolos de estilo (ButtonStyle, LabelStyle, etc.) que permiten modificar la apariencia y comportamiento de sus controles. Puedes crear un tipo que conforme a ese protocolo para definir tu propio estilo y aplicarlo con el modificador correspondiente


/*
 LabelStyle es un protocolo de SwiftUI que permite personalizar cómo se muestran el título y el icono de un Label.
 Cuando implementas LabelStyle, defines cómo se deben acomodar configuration.title y configuration.icon.
 */
//Todos los estilos nativos son como está implementación, por eso la extension necesita el where, solo aplicara la extensión a estra struct que implementa el tipo LabelStyle
struct TrailingIconLabelStyle: LabelStyle {
    
  // Al final termina agregado aquí
  //  static var trailingIcon: Self { Self() }

    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
     }
}

/*
 Esto te deja usar .labelStyle(.trailingIcon) en lugar de tener que escribir .labelStyle(TrailingIconLabelStyle()) cada vez.
 Es un azúcar sintáctico para que el código se vea más limpio.
 */
//La extensión solo se aplica si se cumple la condición, en este caso, si la estructura que implementa LabelStyle es TrailingIconLabelStyle
extension LabelStyle where Self == TrailingIconLabelStyle {
    // Self es el tipo de quien implementa LabelStyle, en este caso TrailingIconLabelStyle
    // Y lo que hace es inicializar esa struct y la obtenemos con .trailingIcon
    static var trailingIcon: Self { Self() }
}
