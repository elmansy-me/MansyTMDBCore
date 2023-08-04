# MansyTMDBCore

[![Swift Version](https://img.shields.io/badge/Swift-5.0-orange.svg)](https://swift.org/)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-lightgrey.svg)](https://developer.apple.com/swift/)

Welcome to the **MansyTMDBCore** package! This Swift Package contains the essential core components for MansyTMDB project, including models, repositories, and the network layer.

## Features

- **Models:** Contains the data models used in the application.
- **Repositories:** Provides repositories to fetch data from different APIs.
- **Network Layer:** Includes network utilities for making API calls.

## Requirements

- iOS 13.0+
- Swift 5.0+

## Installation

To integrate MansyTMDBCore into your project, you can use the Swift Package Manager.

1. Open your Xcode project.
2. Go to `File` > `Swift Packages` > `Add Package Dependency...`
3. Enter the repository URL `https://github.com/elmansy-me/MansyTMDBCore.git`.
4. Follow the prompts to add the package to your project.

## Usage

1. Import Core module in your source files:

```swift
import MansyTMDBCore


2. Access models, repositories, and network layer classes:

```
let moviesRepository = MoviesRepository()
let movieRepository = MovieRepository()
let genreRepository = GenresRepository()
let networkManager = NetworkManager()
```

3. Ability to load movies upon category easily

```
// Load upcoming movies with paging ability
moviesRepository.upcoming(page: 1) { data, error in
    if let data{
    // Loaded data successfully
    }else if let error{
    // Error occured
    }
}

// Load popular movies with paging ability
moviesRepository.popular(page: 1) { data, error in
    if let data{
    // Loaded data successfully
    }else if let error{
    // Error occured
    }
}

// Load top rated movies with paging ability
moviesRepository.topRated(page: 1) { data, error in
    if let data{
    // Loaded data successfully
    }else if let error{
    // Error occured
    }
}

// Search for movies related to a specific keyword
moviesRepository.search(criteria: .keyword(data: "Keyword"), page: 1) { data, error in
    
}

// Search for movies related to list of genres [GenreModel]
moviesRepository.search(criteria: .genres(data: ARRAY_OF_GENRES), page: 1) { data, error in
    
}

// Get movie details using MOVIE_ID
movieRepository.details(id: id) { data, error in
    if let data{
    // Loaded data successfully
    }else if let error{
    // Error occured
    }
}

// Get all movie's genres easily using:
genreRepository.moviesGenres { data, error in
    if let data{
    // Loaded data successfully
    }else{
    // Error occured
    }
}

```


4. Create an API Call request

4.A. First, create an enum contains endpoint's details.
```
enum SomeEndPoint: BaseEndPointProtocol{

    case endPointName

    var httpMethod: HttpMethod{
        .get
    }
    
    var parameters: [String : Any]?{
        switch self {
        case .endPointName:
            return [
                "KEY": VALUE
            ]
        }
    }
    
    var path: String{
        switch self {
        case .endPointName:
            return "PATH/TO/ENDPOINT"
        }
    }
    
}
```

4.B. Second, make your API call directly using ApiManager() class as the following


```
ApiManager().apiCall(endPoint: SomeEndPoint.endPointName).sink { completion in
    switch completion {
    case .failure(let error):
        print(error.localizedDescription)
        break
    case .finished:
        break
    }
} receiveValue: { (result: ParseResponseToCodableModel?) in
    if let result{
        // received value
    }else{
        // error occured
    }
}
```
