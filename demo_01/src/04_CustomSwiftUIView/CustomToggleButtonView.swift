import SwiftUI

// This is just a boring custom View...
struct CustomToggleButtonView: View {
    // This is a way to propagate state variable to a subview.
    // You can think of it as the View that will create this one
    // will own a state to which this variable will be bound to.
    @Binding var isOn

    var body: some View {
        HStack {
            HStack {
                // You can use state all struct's properties like you would in a regular struct.
                // But keep in mind that only the state variable are mutable and gets properly updated
                // in the View.
                Text(isOn ? "On" : "Off")

                // It is also allowed to use if/else statements here in the `body`.
                // This way you can conditionally show Views you want based on some state variable.
                if isOn {
                    Image(systemName: "checkmark")
                } else {
                    Image(systemName: "xmark")
                }
            }
            
            Toggle(isOn: $isOn)
        }
        .padding(5)
        // Same is here with the state variables...
        .background(isOn ? Color.green : Color.red)
        .clipShape(RoundedRectangle(cornerSize: 20))        
    }
}

// This piece of code is here for you to be able to preview
// this file in the Canvas tool.
struct CustomToggleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomToggleButtonView()
    }
}