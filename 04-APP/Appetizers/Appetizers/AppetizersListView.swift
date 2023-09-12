import SwiftUI

struct AppetizersListView: View {
    var body: some View {
        NavigationStack {
            Text("Appetizer List View")
                .navigationTitle("🍟 Appetizers")
        }
    }
}

struct AppetizersListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersListView()
    }
}
