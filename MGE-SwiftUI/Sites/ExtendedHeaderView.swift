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

struct ExtendedHeaderView: View {
    let siteNS: Namespace.ID
    var site: Site
    @State private var showText = false
    var body: some View {
        VStack {
            Image(site.imageName)
                .resizable()
                .scaledToFill()
                .matchedGeometryEffect(id: "image", in: siteNS)
                .frame(height: 100)
                .clipped()
            VStack {
                VStack {
                    Text(site.name)
                        .font(.title)
                        .minimumScaleFactor(0.9)
                        .bold()
                        .lineLimit(1)
                        .layoutPriority(1)
                    Text(site.tagLine).font(.title2).italic()
                }
                .matchedGeometryEffect(id: "text", in: siteNS)
                if showText {
                    Text(site.extended)
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
            .padding()
        }
        .onAppear {
            withAnimation(.linear.delay(0.3)) {
                showText.toggle()
            }
        }
    }
}

struct ExtendedHeaderView_Previews: PreviewProvider {
    @Namespace static var siteNS
    static var site: Site = Site.sample
    static var previews: some View {
        ExtendedHeaderView(siteNS: siteNS, site: site)
    }
}
