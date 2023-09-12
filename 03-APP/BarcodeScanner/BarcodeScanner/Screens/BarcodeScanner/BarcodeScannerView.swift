import SwiftUI

struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(
                    scannedCode: $viewModel.scannedCode,
                    alertItem: $viewModel.alertItem
                )
                .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 80)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    .padding(.top, 16)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(
                    title: Text(alertItem.title),
                    message: Text(alertItem.message),
                    dismissButton: alertItem.dismissButton
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
