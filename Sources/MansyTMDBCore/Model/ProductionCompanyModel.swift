//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

public struct ProductionCompanyModel: Codable, Equatable{
    public let id: Int
    public let name, logo_path, origin_country: String?
    
    public func imageURL(quality: ImageResolution)-> String{
        guard let logo_path else{return ""}
        return ["http://image.tmdb.org/t/p/\(quality.size)", logo_path].joined(separator: "/")
    }
    
    public static func == (lhs: ProductionCompanyModel, rhs: ProductionCompanyModel) -> Bool {
            return lhs.id == rhs.id &&
                   lhs.name == rhs.name &&
                   lhs.logo_path == rhs.logo_path &&
                   lhs.origin_country == rhs.origin_country
        }
}
