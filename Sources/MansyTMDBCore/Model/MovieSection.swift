//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

public enum MovieSection{
    case popular, topRated, upcoming
}

//MARK: Addons

extension MovieSection{
    public var title: String{
        switch self {
        case .popular:
            return "Popular"
        case .topRated:
            return "Top Rated"
        case .upcoming:
            return "Upcoming"
        }
    }
}
