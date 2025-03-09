import SwiftUI

struct Stacks: View {
    var body: some View {
        // HStack, VStack and ZStack are Views used for controlling UI layout.
        // The only purpose is to control how will be the wrapped View positioned.
        // VStack and HStack = Vertical/Horizontal Stack, ZStack = Stack in Z axis.
        // All Views wrapped in this will be positioned vertically one after another.
        VStack {
            // You can specify spacing between individual Views using the
            // `spacing` parameter.
            // You can also change the side to which all wrapped Views will be aligned.
            // This can be achieved by specifying the `alignment` parameter.
            HStack(spacing: 5, alignment: .leading) {
                // Notice the different colors of each View.
                // You can preview this in the Canvas tool.
                // Take a look at the preview or the provided result image in the
                // README.md and try to understand how are the Views positioned.
                Rectangle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.red)
                Rectangle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.red)
            }
            .background(Color.green)
            
            // In the Canvas preview, you can notice the different spacing.
            HStack(spacing: 10) {
                Rectangle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.red)
                Rectangle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(.red)
            }
            .background(Color.yellow)
        }
        .background(Color.blue)

        // TODO: Add `Spacer` here.
    }
}

// This piece of code is here for you to be able to preview
// this file in the Canvas tool.
struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}