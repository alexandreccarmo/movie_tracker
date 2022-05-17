//
//  ContentView.swift
//  Movier Tracker
//
//  Created by Alexandre C do Carmo on 17/05/22.
//

import SwiftUI

struct ContentView: View {
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
        
        Button(action: {}){
            VStack {
                Image(systemName: "gamecontroller")
                Text("Tap Me")
            }
        }.padding().background(Color.blue).cornerRadius(10).foregroundColor(.white)
       
        
    }
    
    func hello(){
        print("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
