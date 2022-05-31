//
//  MovieList.swift
//  Movier Tracker
//
//  Created by Alexandre C do Carmo on 31/05/22.
//

import SwiftUI

struct MovieList: View {
    
    @EnvironmentObject var movieStorage : MovieStorage
    
    var body: some View {
        NavigationView {
            List(movieStorage.movies) { currentMovie in
                NavigationLink(destination: MovieDetail(movie: currentMovie, newMovie: false)) {
                    Text(currentMovie.title)
                }
                }.navigationBarTitle("Movies").navigationBarItems(trailing:
                    NavigationLink(destination: MovieDetail(movie: Movie(), newMovie: true)) {
                        Image(systemName: "plus")
                    }
                )
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
