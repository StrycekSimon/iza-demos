import SwiftUI

struct EditBookmarkView: View {
    let title: String
    let color: Color
    
    var body: some View {
        Group {
            VStack {
                Text("\(title)")
                    .font(.largeTitle)
                    .bold()
            }
        }
        .background(color)
    }
}