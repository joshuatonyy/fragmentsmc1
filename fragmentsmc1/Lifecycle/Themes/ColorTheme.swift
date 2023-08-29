//
//  ColorTheme.swift
//  fragmentsmc1
//
//  Created by Patricia Ho on 29/08/23.
//

import SwiftUI

extension Color {
    struct Primary {
        static let s10 = Color("Green10")
        static let s20 = Color("Green20")
        static let s30 = Color("Green30")
        static let s40 = Color("Green40")
        static let s50 = Color("Green50")
        static let s60 = Color("Green60")
        static let s70 = Color("Green70")
        static let s80 = Color("Green80")
        static let s90 = Color("Green90")
        static let s100 = Color("Green100")
        
        private init() {}
    }
    
    struct Neutral {
        static let s10 = Color("Neutral10")
        static let s20 = Color("Neutral20")
        static let s30 = Color("Neutral30")
        static let s40 = Color("Neutral40")
        static let s50 = Color("Neutral50")
        static let s60 = Color("Neutral60")
        static let s70 = Color("Neutral70")
        static let s80 = Color("Neutral80")
        static let s90 = Color("Neutral90")
        static let s100 = Color("Neutral100")
        
        private init() {}
    }
    
    struct Accent {
        static let light = Color("Accent")
        static let dark = Color("DarkAccent")
        
        private init() {}
    }
    
    struct Semantic {
        static let success = Color("Success")
        static let info = Color("Info")
        static let warning = Color("Warning")
        static let danger = Color("Danger")
        
        private init() {}
    }
}
