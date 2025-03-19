import SwiftUI

struct ContentView: View {
    @State
    var floatValue: Float = 0.0 {
        didSet {
            // Remember that @State is a wrapper and the float value
            // is stored inside.
            // When using the `didSet` here, you are actually watching
            // changes of the wrapper itself instead of the value within.
            // This will get triggered only on the init of this struct.
            print("This will not work as you might expect.")
        }
    }

    var body: some View {
        VStack {
            Slider(
                value: $speed,
                in: 0...100
            )

            // This seems innocent, but when you look into implementation of this
            // resizable button, this is a problematic View.
            ResizableButton(size: $size)
        }
    }
}