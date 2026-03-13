// The Swift Programming Language
// https://docs.swift.org/swift-book
// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

@available(iOS 17.0, *)
public struct ColorTheme {

    public struct Variant {

        public let navigationBG: Color
        public let pickerBG: Color

        public let navigationText: Color
        public let tint: Color
        public let stroke: Color
        public let logo: Color
        
        public init(
            navigationBG: Color,
            pickerBG: Color,
            navigationText: Color,
            tint: Color,
            stroke: Color,
            logo: Color
        ) {
            self.navigationBG = navigationBG
            self.pickerBG = pickerBG
            self.navigationText = navigationText
            self.tint = tint
            self.stroke = stroke
            self.logo = logo
        }
    }
    
    public let dark: Variant

    public init(dark: Variant) {
        self.dark = dark
    }
}


@available(iOS 17.0, *)
@Observable
public final class ColorManager {

    public var colorScheme: ColorScheme

    private let theme: ColorTheme

    public init(
        theme: ColorTheme,
        colorScheme: ColorScheme = .dark
    ) {
        self.theme = theme
        self.colorScheme = colorScheme
    }

    public func updateColorScheme(_ newColorScheme: ColorScheme) {
        self.colorScheme = newColorScheme
    }

    private var colors: ColorTheme.Variant {
        theme.dark
    }
}


@available(iOS 17.0, *)
public extension ColorManager {

    var navigationBG: Color {
        colors.navigationBG
    }

    var pickerBG: Color {
        colors.pickerBG
    }

    var navigationText: Color {
        colors.navigationText
    }

    var tint: Color {
        colors.tint
    }

    var stroke: Color {
        colors.stroke
    }

    var logo: Color {
        colors.logo
    }


}
