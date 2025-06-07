import UIKit

struct Game: Identifiable {
    let id = UUID()
    let title: String
    let path: String
    let cover: UIImage

    static func loadFromLocal() -> [Game] {
        return []
    }
}