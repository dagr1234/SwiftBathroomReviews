// had to make this one as iphone6s crashed with the animation when used
// inside of a list -- animinate commented out so we can easily test if a
// fix comes out.



import SwiftUI

struct NeumorphicButtonStyle: ButtonStyle {
    var bgColor: Color
  

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .frame(minWidth : 0, maxWidth: .infinity)
            

            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
//                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
//                        .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .fill(bgColor)
                }
        )
            .scaleEffect(configuration.isPressed ? 0.95: 1)
            .foregroundColor(.primary)
//            .animation(.spring())
    }
}

// had to make this one as iphone6s crashed with the animation when used
// inside of a list -- animinate commented out so we can easily test if a
// fix comes out.
struct NoAnimateNeumorphicButtonStyle: ButtonStyle {
    var bgColor: Color
  

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .frame(minWidth : 0, maxWidth: .infinity)
            

            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
                        .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .fill(bgColor)
                }
        )
            .scaleEffect(configuration.isPressed ? 0.95: 1)
            .foregroundColor(.primary)
//            .animation(.spring())
    }
}





struct SmallNeumorphicButtonStyle: ButtonStyle {
    var bgColor: Color
    var width  : CGFloat = 250
    var height : CGFloat = 50
  

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .frame(width : width, height:  height)

            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
                        .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                        .blendMode(.overlay)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(bgColor)
                }
        )
            .scaleEffect(configuration.isPressed ? 1.3: 1)
            .foregroundColor(.primary)
//            .animation(.spring())
    }
}

struct SquareNeumorphicButtonStyle: ButtonStyle {
    var bgColor: Color
  

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(10)
            .frame(minWidth : 0, maxWidth: .infinity)
            

           .background(
              //  ZStack {
                //   Rectangle()
//                        .shadow(color: .white, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? -5: -15, y: configuration.isPressed ? -5: -15)
//                        .shadow(color: .black, radius: configuration.isPressed ? 7: 10, x: configuration.isPressed ? 5: 15, y: configuration.isPressed ? 5: 15)
                    //    .blendMode(.overlay)
          Circle()
                  .fill(bgColor)
            //  }
      )
            .scaleEffect(configuration.isPressed ? 0.95: 1)
            .foregroundColor(.primary)
//            .animation(.spring())
    }
}
