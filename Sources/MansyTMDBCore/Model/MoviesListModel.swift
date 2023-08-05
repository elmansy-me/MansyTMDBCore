//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

struct MoviesListModel: Codable{
    let page, total_pages, total_results: Int?
    let results: [BaseMovieModel]?
}
