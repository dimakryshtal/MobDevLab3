//
//  CodableMovies.swift
//  MobDevLab1
//
//  Created by Dima on 20.02.2021.
//

//import Foundation

struct Movies: Codable {
    struct Movie: Codable {
        var title: String
        var year: String
        var imdbID: String
        var type: String
        var poster: String
        
        enum CodingKeys: String, CodingKey {
            case title = "Title"
            case year = "Year"
            case imdbID = "imdbID"
            case type = "Type"
            case poster = "Poster"
        }
    }
    var Search: [Movie]
}
