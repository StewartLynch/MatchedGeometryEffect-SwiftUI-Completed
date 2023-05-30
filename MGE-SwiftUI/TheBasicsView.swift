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

struct TheBasicsView: View {
    @Namespace private var basicNS
    @State private var move = false
    var body: some View {
        VStack {
            HStack {
                Rectangle().fill(.blue)
                    .matchedGeometryEffect(id: "basic",
                                           in: basicNS,
                                           properties: .frame,
                                           anchor: .bottomLeading,
                                           isSource: true)
                    .frame(width: 150, height: 100)
                Rectangle().fill(.green.opacity(0.6))
                    .matchedGeometryEffect(id: move ? "basic" : "",
                                           in: basicNS,
                                           properties: .position,
                                           anchor: .topLeading,
                                           isSource: false)
                    .frame(width: 100, height: 50)
            }
            Button("Move") {
                withAnimation {
                    move.toggle()
                }
            }
        }
    }
}


struct TheBasicsView_Previews: PreviewProvider {
    static var previews: some View {
        TheBasicsView()
    }
}

