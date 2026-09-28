import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.3.fill")
                .font(.largeTitle)
            Text("Scrumdinger")
                .font(.title)
            Text("Plan. Meet. Deliver")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
