import SwiftUI

struct ContentView: View {
    // This is how you can use variables in your Views.
    // Ignore the `@State` keyword for now, we will get to it later.
    @State var toggle: Bool = false
    @State var sliderValue: Float = .zero
    @State var date Date = .now
    @State var color Color = .black

    var body: some View {
        VStack {
            // Pretty self explainatory, right? :)
            Text("This is a View displaying some text.")

            // A button view, that will perform some action on click.
            Button(action: printHelloWorld) {
                // You can put any other View here.
                // It will be embedded into the button.
                // Text("Hello world button")

                // A View that can display images or icons.
                // You can provide it filename or you can choose
                // any icon from the system icon library.
                // It is usually good practice to choose a consistent design
                // so in many cases, you will choose from system icons.
                // You can browse all the icons in the SF Symbols app.
                Image(systemName: "globe")
            }

            // You can create a on/off toggles using this View.
            // If you want to create toggle with just a text label in it,
            // you can just use `Toggle("Some text label", $toggle})`.
            Toggle(isOn: $toggle) {
                // You can put any View here similarly as in the `Button`.
                Text("This could have been just a string...")
            }

            // This is a slider.
            // You can add minimum and maximum value labels by using
            // `minimumValueLabel` and `maximumValueLabel` parameters.
            // The step is also an optional parameter.
            Slider(value: $sliderValue, in: 0...100., step: 5)
            
            // Here you can iteratively draw multiple items.
            // Instead of the integer range, you can pass a list of
            // identifiable values.
            // Identifiable value can be a struct that implements a
            // `Identifiable` protocol.
            // If the values are not identifiable, you can provide
            // a custom way to indentify them by using `id` parameter.
            ForEach(1...5, id: \.self) { num in
                // This can also be any other View.
                Text("Item \(num)")
            }

            // There are more variants of drawing Views iteratively.
            // `ForEach` is the most flexible one without any styling.
            // If you'd prefer using the default layout for displaying
            // a list of Views, there is `List`.

            // From the examples above, you can already tell what
            // these Views will be about...
            DatePicker("Date:", selection: $date)
            ColorPicker("Color:", selection: $color)
        }
    }
}

func printHelloWorld() {
    print("Hello World!")
}

// This piece of code is here for you to be able to preview
// this file in the Canvas tool.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}