import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                            .environment(\.symbolVariants, .none)
                    }
                Text("No Content")
                    .tabItem {
                        Label("Search", systemImage: "text.magnifyingglass")
                            .environment(\.symbolVariants, .none)
                    }
                Text("No Content")
                    .tabItem {
                        Label("Post", systemImage: "plus.app")
                            .environment(\.symbolVariants, .none)
                    }
                Text("No Content")
                    .tabItem {
                        Label("Reel", systemImage: "play.rectangle")
                            .environment(\.symbolVariants, .none)
                    }
                Text("No Content")
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                            .environment(\.symbolVariants, .none)
                    }
            }
            .toolbarBackground(Color(red: 0.99999, green: 0.99999, blue: 0.99999), for: .tabBar)
        }
        .accentColor(.indigo)
    }
}

#Preview {
    ContentView()
}
