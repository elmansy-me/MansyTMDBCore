//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

struct GenresResponse: Codable{
    let genres: [GenreModel]
}

public struct GenreModel: Codable, Equatable{
    public let id: Int
    public let name: String
    
    public static func == (lhs: GenreModel, rhs: GenreModel) -> Bool {
        return lhs.id == rhs.id
    }
}
