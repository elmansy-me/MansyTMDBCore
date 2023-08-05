//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

public enum MovieSearchCriteria{
    
    case keyword(data: String)
    case genres(data: [GenreModel])
    
}
