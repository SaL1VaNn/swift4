import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AdviceViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.advice)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
                .foregroundColor(.primary)
            
            Button(action: {
                viewModel.getRandomAdvice()
            }) {
                Text("Get Random Advice")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
