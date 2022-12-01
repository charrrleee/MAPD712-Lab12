//
//  ContentView.swift
//  MAPD712-Lab12
//
//  Created by Charlene Cheung on 30/11/2022.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var model = PostViewModel()


    var body: some View {
        List(model.articles) { article in
            PostView(article: article)
//                .border(Color.black, width:1)
                .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 20))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

