import SwiftUI

// Let's create our custom options View with colorful toggle.
// As you can see in this file, a custom View has basically the same
// interface as we've already seen.
// We just need to implement the `body` property.
struct ToggleRowView: View {
    // Remember that this is a regular struct like 
    // any other struct in almost all programming languages.
    // We can store here any value we want.
    // But remember, as it is a struct, we can only store static values.
    // (Shhhhh, there is a way we will look more in depth at in the next lecture.)

    // We let the "user" of this component specify the title as a static property.
    // This can be done if you are 100% sure this value will not change.
    let title: String

    // Let's create interface for the "user" similar to the one in `Button` View.
    // We define a function that we will call on 
    let onToggle: (Bool) -> Void

    // Regular variables are almost impossible in struct, but here it is.
    // For now, forget about it and just accept it is a variable that is called "State variable".
    // We will go over it in the next lecture, don't worry. ;-)
    @State var isOn: Bool = false

    // We should understand this construct already. :-)
    var body: some View {
        HStack {
            Text(title)

            // This is a View we built in `CustomToggleButton.swift`, take a look yourself.
            CustomToggleButtonView($isOn)
        }
        // This is a ViewModifier you can use to propagate state (variable) changes
        // up in the View hierarchy IF THERE IS NO OTHER SUITABLE WAY.
        // If you can, keep away from it... but sometimes it is a necessary evil.
        // This modifier basically executes our code if a specific state variable changes. 
        .onChange(of: $isOn) { value in
            // So this callback we got from "user" of this component will be called
            // when the `isOn` variable changes.
            onToggle(value)
        }
    }
}

// This piece of code is here for you to be able to preview
// this file in the Canvas tool.
struct ToggleRowView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleRowView()
    }
}