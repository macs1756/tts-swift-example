import SwiftUI

struct ContentView: View {
    
    // Constants
    @State private var inputText: String = ""
    private var ttsDistributor = TtsDistributor()
    
    //fn
    func clickOnApplyButton(inputText: String) {
        ttsDistributor.distribute(inputText)
    }
    
    var body: some View {
        VStack {
            Text("Try writing something and check our text to speech")
                .padding(.horizontal, 10)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
                .font(.system(size: 19))
        
            TextField("Write something", text: $inputText)
                .padding(.horizontal, 30)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Apply") {
                clickOnApplyButton(inputText: inputText)
            }
            .padding(.top, 20)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
