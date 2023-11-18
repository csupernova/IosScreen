//
//  Fonts.swift
//  sceenIos
//
//  Created by Dmitry on 17.11.2023.
//

import Foundation
import SwiftUI

extension Font{
    static let regularText_12 = Font.custom("Poppins", size: 12)
    static let regularText_14 = Font.custom("Poppins", size: 14)
    static let regularText_15 = Font.custom("Poppins", size: 15)
    static let regularText_16 = Font.custom("Poppins", size: 16)
    static let boldText_16 = Font.custom("Poppins", size: 16).weight(.bold)
    static let boldText_20 = Font.custom("Poppins", size: 20).weight(.bold)
    static let semiBoldText_16 = Font.custom("Poppins", size: 16).weight(.semibold)
}
