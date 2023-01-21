//
//  MovieTableCellViewModel.swift
//  Movie_App
//
//  Created by Ertugrul Berber on 21.01.2023.
//

import Foundation
import UIKit

class MovieTableCellViewModel {
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.rating = "\(movie.voteAverage)/10"
        self.imageUrl = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
