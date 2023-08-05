//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

public struct BaseMovieModel: Codable, Equatable{
    public let id: Int
    public let title, original_title, poster_path, overview: String?
    public let genre_ids: [Int]
    public let vote_average: Double
    
    public func imageURL(quality: ImageResolution)-> String{
        guard let poster_path else{return ""}
        return ["http://image.tmdb.org/t/p/\(quality.size)", poster_path].joined(separator: "/")
    }
    
    public static func == (lhs: BaseMovieModel, rhs: BaseMovieModel) -> Bool {
        lhs.id == rhs.id
    }
    
    public init(id: Int, title: String?, original_title: String?, poster_path: String?, overview: String?, genre_ids: [Int], vote_average: Double) {
        self.id = id
        self.title = title
        self.original_title = original_title
        self.poster_path = poster_path
        self.overview = overview
        self.genre_ids = genre_ids
        self.vote_average = vote_average
    }
    
    public static var mocked: BaseMovieModel{
        BaseMovieModel(id: 238, title: "The Godfather", original_title: "The Godfather", poster_path: "/3bhkrj58Vtu7enYsRolD1fZdja1.jpg", overview: "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.", genre_ids: [18,80], vote_average: 8.7)
    }
    
    public static var mockedList: [BaseMovieModel]{
        [.mocked, .mocked, .mocked, .mocked, .mocked, .mocked, .mocked, .mocked, .mocked, .mocked]
    }
}
