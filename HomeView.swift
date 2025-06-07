import SwiftUI

struct HomeView: View {
    @State private var games: [Game] = Game.loadFromLocal()

    var body: some View {
        NavigationView {
            List(games) { game in
                NavigationLink(destination: Text(game.title)) {
                    HStack {
                        Image(uiImage: game.cover)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(8)
                        Text(game.title)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("HeavenX Library")
        }
    }
}