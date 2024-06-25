import SwiftUI

struct StoryWatchButton: View {
    var body: some View {
        VStack(spacing: 0) {
            AsyncImage(
                url: .init(string: "https://picsum.photos/100/100"),
                content: iconImage,
                placeholder: ProgressView.init
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            Text(members.randomElement()!)
                .font(.footnote)
                .padding(.top, 3)
        }
        .frame(width: 70, height: 70)
    }

    func iconImage(_ image: Image) -> some View {
        image.resizable()
            .clipShape(Circle())
            .padding(4)
            .background(backgroundStyle)
            .clipShape(Circle())
            .overlay(alignment: .bottom) { personImageCapsuleTile }
    }

    var backgroundStyle: some ShapeStyle {
        LinearGradient(colors: [.indigo, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
    }

    var personImageCapsuleTile: some View {
        Image(systemName: "person.fill.checkmark")
            .resizable()
            .scaledToFit()
            .frame(height: 10)
            .padding(.vertical, 2)
            .padding(.horizontal, 6)
            .background()
            .clipShape(Capsule())
    }
}

#Preview {
    StoryWatchButton()
        .scaleEffect(3.0)
}
