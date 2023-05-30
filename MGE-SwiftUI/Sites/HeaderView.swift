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

struct HeaderView: View {
    let siteNS: Namespace.ID
    var site: Site
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image(site.imageName)
                    .resizable()
                    .scaledToFill()
                    .matchedGeometryEffect(id: "image", in: siteNS)
                    .frame(width: 100, height: 100)
                    .clipped()
                VStack {
                    Text(site.name)
                        .font(.title).bold()
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                    Text(site.tagLine).italic()
                }
                .matchedGeometryEffect(id: "text", in: siteNS)
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @Namespace static var siteNS
    static var sample = Site.sample
    static var previews: some View {
        HeaderView(siteNS: siteNS, site: sample)
    }
}
