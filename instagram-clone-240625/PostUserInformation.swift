import SwiftUI

struct PostUserInformation: View {
    var body: some View {
        HStack(spacing: 0) {
            AsyncImage(url: .init(string: "https://picsum.photos/100/100")) {
                $0.resizable().scaledToFit().clipShape(.circle)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 40, height: 40)

            VStack(alignment: .leading, spacing: 0) {
                Text(members.randomElement()!)
                    .font(.footnote).fontWeight(.semibold)
                HStack(spacing: 0) {
                    Text("michael_janction").font(.footnote)
                    Text("・オリジナル音楽").font(.caption)
                }
            }
            .padding(.leading, 5)

            Spacer()

            Text("フォロー")
                .font(.caption)
                .padding(.vertical, 5)
                .padding(.horizontal, 5)
                .background(Color(red: 0.975, green: 0.975, blue: 0.975))
                .clipShape(RoundedRectangle(cornerRadius: 5))

            Image(systemName: "ellipsis")
                .resizable()
                .scaledToFit()
                .frame(width: 15)
                .padding(.leading, 7.5)
        }
    }
}

#Preview {
    PostUserInformation()
        .border(.pink)
}
