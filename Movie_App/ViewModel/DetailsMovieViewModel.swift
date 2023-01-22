//
//  DetailsMovieViewModel.swift
//  Movie_App
//
//  Created by Ertugrul Berber on 22.01.2023.
//

import Foundation

class DetailsMovieViewModel {
    
    var movieData: Movie
    
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieId: Int
    
    init(movie: Movie) {
        self.movieData = movie
        
        self.movieId = movie.id
        self.movieTitle = movie.title ?? movie.name ?? ""
        self.movieDescription = movie.overview ?? ""
        self.movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
