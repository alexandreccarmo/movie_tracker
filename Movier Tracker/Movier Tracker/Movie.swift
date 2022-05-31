//
//  Movie.swift
//  Movier Tracker
//
//  Created by Alexandre C do Carmo on 31/05/22.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var title = ""
    var rating = 3.0
    var seen = false
}


class MovieStorage: ObservableObject {
    @Published var movies = [Movie]()
}
