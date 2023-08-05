//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

enum MovieEndPoint: BaseEndPointProtocol{

    case details(id: Int)

    var httpMethod: HttpMethod{
        .get
    }

    var parameters: [String : Any]?{
        switch self {
        case .details:
            return [
                "api_key": MansyTMDBCore.APIKey
            ]
        }
    }

    var path: String{
        switch self {
        case .details(let id):
            return "movie/\(id)"
        }
    }


}
