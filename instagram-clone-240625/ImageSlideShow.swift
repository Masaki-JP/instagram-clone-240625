import SwiftUI

struct ImageSlideShow: View {
    let url: URL? = .init(string: "https://picsum.photos/500/500")

    var body: some View {
        TabView {
            ForEach(0..<3) { _ in
                AsyncImage(url: url, transaction: .init(animation: .easeIn(duration: 0.5))) {
                    switch $0 {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                    case .failure(let error):
                        let _ = print(error.localizedDescription)
                        Text(error.localizedDescription)
                    @unknown default:
                        fatalError()
                    }
                }
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImageSlideShow()
}
