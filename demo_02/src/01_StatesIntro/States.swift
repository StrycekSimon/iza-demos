import SwiftUI

struct States: View {
    // The main idea behind building UI with SwiftUI is
    // that the UI is just a function of some state.
    // It should be centered about what data we are dealing with.
    // For such purpose, there is a @State var annotation. 
    // You can imagine @State as a wrapper that causes 
    // the View to update whenever it changes.
    @State
    var counter: Int

    // You can both use/display the values of your state var 
    // and change it from the View's body itself.
    var body: some View {
        VStack
        {
            // You can display it.
            Text("Counter: \(counter)")

            HStack {
                Button("+1") {
                    // You can safly change it like this.
                    counter += 1
                }

                Button("0") {
                    counter = 0
                }

                Button("-1") {
                    counter -= 1
                }     
            }

            // Or you can use to condition the View.
            if counter > 3_{
                Text("The counter is greater than 3.")
                    .foregroundColor(counter == 4 ? Color.black : Color.red)
            }
        }
    }
}