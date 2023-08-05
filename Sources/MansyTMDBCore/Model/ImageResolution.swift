//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

public enum ImageResolution{
    case thumbnail
    case small
    case medium
    case large
    
    var size: String{
        switch self {
        case .thumbnail:
            return "w92"
        case .small:
            return "w154"
        case .medium:
            return "w342"
        case .large:
            return "w780"
        }
    }
    
}
