import SwiftUI

struct RootView: View {
    @State
    var wasClicked: Bool

    var body: some View {
        VStack {
            ParentView($wasClicked)
        }
        .frame(width: 300, height: 300)
        .background(wasClicked ? Color.blue : Color.purple)
    } 
}