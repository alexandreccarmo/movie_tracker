//
//  MovieDetail.swift
//  Movier Tracker
//
//  Created by Alexandre C do Carmo on 17/05/22.
//

import SwiftUI

struct MovieDetail: View {
    
    @State var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var movieStorage: MovieStorage
    
    let newMovie: Bool
    
    var body: some View {
//        Image("code").resizable().aspectRatio(contentMode: .fit)
       
//        Image(systemName: "lightbulb").resizable().aspectRatio(contentMode: .fit).foregroundColor(.red)
//        HStack(alignment: .firstTextBaseline){
//            Text("Hello").lineLimit(1).font(.largeTitle)
//            Image(systemName: "lightbulb")
//            Text("Good Bye").lineLimit(1)
//        }
        
//        VStack(alignment: .leading){
//            Text("Hello").lineLimit(1).font(.largeTitle)
//            Image(systemName: "lightbulb")
//            Text("Good Bye").lineLimit(1)
//        }
        
//        ZStack{
//
//            Image("code").resizable().aspectRatio(contentMode: .fit)
//
//            Image(systemName: "play.fill").resizable().foregroundColor(.red).frame(width: 50, height: 50)
//        }
        
//        Button(action: {
//            print("Hello")
//        }, label: {
//            Text("My Button")
//        })
//
//        Button(action: hello){
//            Text("My Button")
//        }
        
//
//        ZStack{
//            Image("code").resizable().aspectRatio(contentMode: .fit)
//
//            Button(action: hello){
//                Image(systemName: "play.fill").resizable().foregroundColor(.red).frame(width: 50, height: 50)
//            }
//
//
//        }
//
        
//        Button(action: {}){
//            HStack {
//                Text("Tap Me")
//                Image(systemName: "gamecontroller")
//            }
//        }.padding().background(Color.blue).cornerRadius(10).foregroundColor(.white)
        
//        Button(action: {}){
//            VStack {
//                Image(systemName: "gamecontroller")
//                Text("Tap Me")
//            }
//        }.padding().background(Color.blue).cornerRadius(10).foregroundColor(.white)
        
        List {
            
            Section{
                SectionTitle(title: "Title")
                TextField("Movie Title",text: $movie.title)
            }
            
            Section{
                SectionTitle(title: "Rating")
                HStack{
                    Spacer()
                    Text(String(repeating:"★", count:  Int(movie.rating))).foregroundColor(.yellow).font(.title)
                    Spacer()
                }
                Slider(value:$movie.rating, in: 1...5, step: 1)
            }
            
            Section {
                SectionTitle(title: "Seen")
                Toggle(isOn:$movie.seen, label: {
                    if movie.title == "" {
                        Text("I have seen this movie")
                    }
                    else{
                        Text("I have seen \(movie.title)")
                    }
                    
                })
            }
            Section {
                Button(action:{
                    if self.newMovie {
                        self.movieStorage.movies.append(self.movie)
                    }
                    else {
                        for x in 0..<self.movieStorage.movies.count {
                            
                            if self.movieStorage.movies[x].id == self.movie.id {
                                self.movieStorage.movies[x] = self.movie
                            }
                        }
                    }
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }.disabled(movie.title.isEmpty)
            }
            
        }.listStyle(GroupedListStyle())
       
        
    }
    
    func hello(){
        print("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: Movie(), newMovie: true)
    }
}

struct SectionTitle: View {
    
    var title: String
    
    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray)
    }
}
