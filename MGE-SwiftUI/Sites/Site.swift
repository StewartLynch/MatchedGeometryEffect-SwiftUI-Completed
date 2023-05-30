//
// Created for MGE
// by  Stewart Lynch on 2023-05-28
// Using Swift 5.0
// Running on macOS 13.4
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import Foundation

struct Site {
    var name: String
    var tagLine: String
    var location: String
    var extended: String
    var imageName: String
    var unSplashImages: [String]
    
    static var sample: Site {
        .init(name: "Joshua Tree National Park", tagLine: "Where Two Deserts meet", location: "California", extended: "Two distinct desert ecosystems, the Mojave and the Colorado, come together in Joshua Tree National Park. A fascinating variety of plants and animals make their homes in a land sculpted by strong winds and occasional torrents of rain. Dark night skies, a rich cultural history, and surreal geologic features add to the wonder of this vast wilderness in southern California. Come explore for yourself.", imageName: "JoshuaTree",
              unSplashImages: [
                "alessandro-rossi-FZlXXz5vlSs-unsplash",
                "alex-rhee-bNFp_Nel4gc-unsplash",
                "chris-long-4-yxFu0t7rI-unsplash",
                "joshua-earle-mErSbLOqSJk-unsplash",
                "joshua-case-AfeFioZGk6I-unsplash",
                "joshua-earle-dt0A75WG_aE-unsplash",
                "kevin-turcios-VfuJpt81JZo-unsplash",
                "lindsay-doyle-s6fBJzk0AU0-unsplash",
                "madeline-pere-9i68KSsytKg-unsplash",
                "mark-west-RPbO_AUjVl4-unsplash",
                "neal-johnson-uFNfT-nVKFs-unsplash",
                "roberto-nickson-g3-eeBDiUbc-unsplash",
                "ryan-hoffman-xLgqS5honO0-unsplash",
                "sam-mgrdichian-9uUzH_0kt7c-unsplash",
                "spencer-tamichi-BBS7kvSzusY-unsplash",
                "david-sola-3guU1kCxxy0-unsplash",
                "elliott-engelmann-4xEfxMShEUM-unsplash",
                "frank-mckenna-RBRkrO9GY_Q-unsplash",
                "george-pagan-iii-DLqHu9V6WHE-unsplash"
        ])
    }
}
