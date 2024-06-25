import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                headerContents
                    .padding(.horizontal, 7.5)
                scrollableStoryWatchButtonRow
                    .padding(.top, 10)
                Divider()
                    .padding(.top, 10)
                VStack(spacing: 0) {
                    ForEach(0..<10) { i in
                        VStack(spacing: 0) {
                            PostUserInformation()
                                .padding(.horizontal, 7.5)
                                .padding(.top, 7.5)
                            ImageSlideShow()
                                .frame(height: 400)
                                .padding(.top, 5)
                            reactionButtons
                                .padding(.horizontal)
                                .padding(.top, 7.5)
                            postUserMessageAndFollowerComments
                                .padding(.horizontal)
                                .padding(.top, 7.5)
                        }
                        .padding(.top, i == 0 ? 10 : 20)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        .padding(.top, 1)
    }

    var headerContents: some View {
        HStack(spacing: 0) {
            HStack(spacing: 0) {
                Text("Instagram")
                    .font(.custom("AmericanTypewriter-Bold", size: 25))
                Image(systemName: "chevron.down")
                    .padding(.leading, 3)
                    .padding(.top, 5)
            }
            Spacer()
            Image(systemName: "heart")
            Image(systemName: "message").padding(.leading)
        }
    }

    var scrollableStoryWatchButtonRow: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 0) {
                ForEach(0..<10) { _ in
                    StoryWatchButton()
                }
            }
        }
        .scrollIndicators(.hidden)
    }

    var reactionButtons: some View {
        HStack {
            ForEach(["heart", "message", "paperplane", "bookmark"], id: \.self) { systemName in
                Image(systemName: systemName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                if systemName == "paperplane" { Spacer() }
            }
        }
    }

    var postUserMessageAndFollowerComments: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Good: \(members.randomElement()!), \(members.randomElement()!)…")
            Text("こんにちは。今日もいい天気ですね。")
            Text("\(Int.random(in: 10...500))件のコメントを表示")
                .foregroundStyle(Color(red: 0.3, green: 0.3, blue: 0.3))
                .font(.callout)
                .padding(.top, 5)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    HomeView()
}
