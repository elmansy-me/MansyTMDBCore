//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

public struct MovieModel: Codable, Equatable{
    public let id, vote_count: Int
    public let title, original_title, poster_path, overview, release_date, status: String?
    public let vote_average: Double
    public let genres: [GenreModel]
    public let adult: Bool
    public let production_companies: [ProductionCompanyModel]
    
    public func imageURL(quality: ImageResolution)-> String{
        guard let poster_path else{return ""}
        return ["http://image.tmdb.org/t/p/\(quality.size)", poster_path].joined(separator: "/")
    }
    
    init(id: Int, vote_count: Int, title: String?, original_title: String?, poster_path: String?, overview: String?, release_date: String?, status: String?, vote_average: Double, genres: [GenreModel], adult: Bool, production_companies: [ProductionCompanyModel]) {
        self.id = id
        self.vote_count = vote_count
        self.title = title
        self.original_title = original_title
        self.poster_path = poster_path
        self.overview = overview
        self.release_date = release_date
        self.status = status
        self.vote_average = vote_average
        self.genres = genres
        self.adult = adult
        self.production_companies = production_companies
    }
    
    public static func == (lhs: MovieModel, rhs: MovieModel) -> Bool {
            return lhs.id == rhs.id &&
                   lhs.vote_count == rhs.vote_count &&
                   lhs.title == rhs.title &&
                   lhs.original_title == rhs.original_title &&
                   lhs.poster_path == rhs.poster_path &&
                   lhs.overview == rhs.overview &&
                   lhs.release_date == rhs.release_date &&
                   lhs.status == rhs.status &&
                   lhs.vote_average == rhs.vote_average &&
                   lhs.genres == rhs.genres &&
                   lhs.adult == rhs.adult &&
                   lhs.production_companies == rhs.production_companies
        }
}
