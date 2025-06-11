import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack {
            Text("Order View")
                .navigationTitle("📖 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
