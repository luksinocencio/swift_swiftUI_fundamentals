import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView),
                        label: {
                            FrameworkTitleView(framework: framework)
                        }
                    )
                }
                .navigationTitle("🍎 Frameworks")
                .accentColor(Color(.label))
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(
                        framework: viewModel.selectedFramework!,
                        isShowingDetailView: $viewModel.isShowingDetailView
                    )
                }
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
