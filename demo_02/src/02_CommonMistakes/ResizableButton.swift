import SwiftUI

struct ResizableButton: View {
    @Binding
    var size: Float

    var body: some View {
        Button("Click me :)")
            .frame(width: size, height: size)
            .onChange(of: $size) { size in
                if size {
                    // This update is what you should not do.
                    // You need to consider that the `size` state var
                    // is connected with the parent View's state.
                    // This will cause an infinit update loop
                    // which depending on the current SwiftUI version
                    // will cause either unwanted behavior or crash.
                    size += 5
                }
            }
    }
}