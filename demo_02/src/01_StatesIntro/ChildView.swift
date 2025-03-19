import SwiftUI

struct ChildView: View {
    @Binding 
    var wasClicked: Bool

    var body: some View {
        Button("Click me!") {
            wasClicked = !wasClicked
        }
        .foregroundColor(wasClicked ? Color.teal : Color.white)
    }
}