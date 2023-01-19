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
            return "91540bd9c5f66b73ecfbefbef341a5bcd5f"
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
