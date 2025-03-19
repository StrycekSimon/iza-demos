import SwiftUI

struct ParentView: View {
    @Binding
    var wasClicked: Bool

    var body: some View {
        VStack {
            ChildView($wasClicked)
        }
        .frame(width: 100, height: 100, alignment: .bottom)
        .background(wasClicked ? Color.green : Color.red)
    } 
}