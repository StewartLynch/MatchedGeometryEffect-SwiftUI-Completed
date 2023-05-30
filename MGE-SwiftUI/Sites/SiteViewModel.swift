//
// Created for MGE
// by  Stewart Lynch on 2023-05-29
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import Foundation

class SiteViewModel: ObservableObject {
    @Published var site: Site = Site.sample
    @Published var selectedIndex = 0
    
    @Published var selectedImage: String? = nil
    
    func selectImage(_ image: String) {
        if let index = site.unSplashImages.firstIndex(where: {$0 == image}) {
            selectedIndex = index
            site.unSplashImages.remove(at: index)
            selectedImage = image
        }
    }
    
    func unselectImage() {
        if let selectedImage {
            self.selectedImage = nil
            site.unSplashImages.insert(selectedImage, at: selectedIndex)
        }
    }
}
