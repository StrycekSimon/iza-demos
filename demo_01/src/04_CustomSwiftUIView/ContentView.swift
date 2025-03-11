import SwiftUI

// Let's build a simple options menu using SiwftUI:
struct ContentView: View {
    // Let's now stick to static values and we will talk more 
    // about using variables in the next lecture.
    let options = ["Option A", "Option B", "Option C"]

    var body: some View {
        // We've seen this View previously. Lets iterate over all options in our menu
        // and let's create toggles for all items.
        ForEach(options, key: \.self) { option in
            // Please, refer to the ToggleRowView.swift file to find about this View...
            ToggleRowView(option) {
                // We will pass a closure that prints if the button is on or of,
                // which the ToggleRowView will call whenever it will toggle. 
                print($0 ? "The '\(option)' toggle is on." : "The '\(option)' toggle is off.")
            }
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
