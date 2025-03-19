import SwiftUI

struct EditBookmarkView: View {
    @State
    var title: String

    @State
    var color: Color

    let onSubmit: (Bookmark) -> Void
    
    var body: some View {
        Group {
            VStack {
                TextField("Bookmark title:", $title)
                ColorPicker("Background color: ", $color)
                Button("Save") {
                    onSubmit(.init(title: title, color: color))
                }
            }
        }
        .ignoresSafeArea()
        .background(color)
    }
}