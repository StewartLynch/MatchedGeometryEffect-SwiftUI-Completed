//
// Created for MGE
// by  Stewart Lynch on 2023-05-28
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct SelectedImageView: View  {
    let siteNS: Namespace.ID
    @ObservedObject var viewModel: SiteViewModel
    var body: some View {
        VStack {
            let selectedImage: String = viewModel.selectedImage ?? Site.sample.unSplashImages[0]
            Image(selectedImage)
                .resizable()
                .scaledToFit()
                .overlay(alignment: .bottom) {
                    Text(credit(selectedImage))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.2))
                }
                .matchedGeometryEffect(id: selectedImage, in: siteNS)
                .onTapGesture {
                    withAnimation(.spring(dampingFraction: 0.6)){
                        viewModel.unselectImage()
                    }
                }
        }
        .padding()
    }
    func credit(_ imageName: String) -> String {
        Array(imageName.components(separatedBy: "-").prefix(2)).joined(separator: " ").capitalized
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    @Namespace static var siteNS
    static var previews: some View {
        SelectedImageView(siteNS: siteNS, viewModel: SiteViewModel())
    }
}
