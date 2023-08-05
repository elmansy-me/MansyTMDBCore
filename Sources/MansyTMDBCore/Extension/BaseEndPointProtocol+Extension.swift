//
//  File.swift
//  
//
//  Created by Ahmed Elmansy on 05/08/2023.
//

import Foundation

extension BaseEndPointProtocol{
    
    var encoding: Encoding{
        .URL
    }
    
    var headers: [String : String]{
        [:]
    }
    
    var baseUrl: String{
        "http://api.themoviedb.org/3/"
    }
    
    var url: URL{
        URL(string: baseUrl + path)!
    }
    
}

