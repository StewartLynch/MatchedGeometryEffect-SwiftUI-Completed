//
// Created for MGE
// by  Stewart Lynch on 2023-05-28
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct SiteView: View {
    @Namespace private var siteNS
    @StateObject var viewModel = SiteViewModel()
    @State private var showExtended = false
    @State private var showImage = false
    let columns = Array(repeating: GridItem(.flexible()), count: 4)
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(alignment: .leading) {
                    if !showExtended {
                        HeaderView(siteNS: siteNS, site: viewModel.site)
                            .onTapGesture {
                                withAnimation {
                                    showExtended.toggle()
                                }
                            }
                    } else {
                        ExtendedHeaderView(siteNS: siteNS, site: viewModel.site)
                            .onTapGesture {
                                withAnimation {
                                    showExtended.toggle()
                                }
                            }
                    }
                    ScrollView() {
                        Text("Photo Gallery")
                        LazyVGrid(columns: columns) {
                            ForEach(viewModel.site.unSplashImages, id: \.self) { image in
                                Image(image)
                                    .resizable()
                                    .scaledToFit()
                                    .matchedGeometryEffect(id: image, in: siteNS)
                                    .onTapGesture {
                                        withAnimation(.spring(dampingFraction: 0.6)) {
                                            viewModel.selectImage(image)
                                            showImage.toggle()
                                        }
                                    }
                            }
                        }
                        .padding()
                    }
                    .opacity(viewModel.selectedImage == nil ? 1 : 0)
                }
                if viewModel.selectedImage != nil {
                    SelectedImageView(siteNS: siteNS, viewModel: viewModel)
                }
            }
            .navigationTitle("National Parks")
        }
    }
}

struct SiteView_Previews: PreviewProvider {
    static var previews: some View {
        SiteView()
    }
}
