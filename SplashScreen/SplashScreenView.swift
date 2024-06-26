import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opsity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("worktime")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Text("スプラッシュスクリーン")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opsity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opsity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
