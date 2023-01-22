//
//  NetworkConstant.swift
//  Movie_App
//
//  Created by Ertugrul Berber on 15.01.2023.
//

import Foundation

class NetworkConstant {
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        //Singleton
    }
    public var apiKey: String {
        get {
            //API Key from //https://www.themoviedb.org/
            return "35e3684bbfeca8df762ca9b0c4534e73"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://www.themoviedb.org/3/"
        }
    }
    
    public var imageServerAddress: String {
        get {
            return "http://image.tmdb.org/t/p/w500/"
        }
    }
}
