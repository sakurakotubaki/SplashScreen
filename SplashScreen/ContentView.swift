import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Text("コンテンツ画面")
                .foregroundColor(.white)
                .font(.system(size: 30))
        }
    }
}

#Preview {
    ContentView()
}
