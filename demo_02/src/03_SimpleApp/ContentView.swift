import SwiftUI

struct ContentView: View {
    @State var bookmarks: [Bookmark] = [
        .init(title: "FIT", color: Color.blue)
        .init(title: "VUT", color: Color.red)
    ]

    NavigationStack {
        VStack {
            NavigationLink(value: ) {

            }
            
            List {
                Section("All bookmarks") {
                    ForEach(bookmarks, id: \.name) { bookmark in
                        NavigationLink(value: bookmark) {
                            Label(bookmark.title)
                                .foregroundColor(bookmark.color)
                        }
                    }
                }
            }
            .navigationTitle("My bookmarks")
            .navigationDestination(for: Bookmark.self) { bookmark in 
                BookmarkDetail(title: bookmark.title, color: bookmark.color)
            }
        }
    }
}

struct Bookmark: Hashable {
    var title: String
    var color: Color
}