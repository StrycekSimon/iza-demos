import SwiftUI

struct Modifiers: View {
    var body: some View {
        VStack {
            Text("Hello world!")
                // Using this modifier, you can configure anything
                // related to font.
                // You can either use some predefined fonts, or use 
                // your custom font configuration.
                .font(.title) 
                // .font(.system(size: 11.0))

                // This modifier relates to the `Text`.
                // This can be applied also for other styles like
                // `.italic()` or `.monospaced()`...
                .bold()
                
                // This modifier supports adding colors, gradients,
                // and other contents as a background for the View.
                .background(Color.blue)

                // This modifier allows you to put any other View
                // on top of the "Hello world!" label.
                // You can even specify the alignment of the second View
                // using the `alignment` parameter.
                .overlay {
                    Text("O")
                        .background(Color.green)
                }

            // SwiftUI allows you to draw different shapes and you
            // can build your custom View from ground up.
            // There is support for shapes like:
            // `Rectangle`, `Circle`, ...
            // You can even create your own shapes by conforming to
            // the `Shape` protocol. 
            RoundedRectangle(cornerRadius: 0.5)
                // The `foregroundColor()` modifier is a bit less straightforward,
                // but don't be afraid, Apple made it pretty intuitive.
                // The forground is tied to the context of the View you are working with.
                // In case of `Text`, it can be color of the text and in case of shapes
                // like this one, it is usually the color of the shape itself.
                .foregroundColor(Color.red)

                // If you want to constraint your View to not take the whole screen,
                // you can use this modifier.
                // It simply sets a rectangular space on the screen, where this
                // View can stratch however it wants.
                // You can also specify, how the View should be aligned inside this
                // rectangular frame.
                .frame(width: 100, height: 100, alignment: .center)

                // The order of modifiers can change the context for other modiers.
                // If we'd put this modifier before the frame, the yellow border line
                // would be around the `RoundedRactangle` but in this case,
                // we are drawing a border around the frame containing the shape.
                .stroke(Color.yellow)

                // `padding` modifier is also pretty straightforward.
                // It defines a size of the inner space between borders of the View
                // and the View content itself.
                // If you define padding as below, there will be a blank 10pt space
                // separating the frame borders and the rounded rectangle shape.
                .padding(10)


            // Another useful modifier is `clipShape`.
            // It can clip our View by a given shape.
            // You can for example create the iconic profile picture circle crop
            // by applying the `.clipShape(Circle())` on an `Image` View.
            Rectangle()
                .foregroundColor(Color.green)
                .frame(width: 30, height: 30)
                .clipShape(Circle())
        }
    }
}

// This piece of code is here for you to be able to preview
// this file in the Canvas tool.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}