import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                    .navigationDestination(for: Framework.self) { framework in
                        FrameworkDetailView(framework: framework)
                    }
                }
                .navigationTitle("🍎 Frameworks")
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
