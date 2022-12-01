//
//  PostView.swift
//  MAPD712-Lab12
//
//  Created by Charlene Cheung on 30/11/2022.
//

import Foundation
import SwiftUI

struct PostView: View {
    var article: PostModel
    var body: some View {
        
        Group {
            VStack(alignment: .leading) {
                Text(article.title)
                    .font(.title)
                    .bold()
                Spacer()
                Text(article.description)
                    .foregroundColor(.secondary)
            }
            VStack(
                alignment: .trailing,
                spacing: 10) {
                    Button("Select") {
                        article.isSelected = true
                    }
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity,
                        alignment: .trailing
                    )
                }
        }
    }
}
//recipe: RecipeModel(id: UUID(), name: "Italian
//                     Pizza Chicken", origin: "Italian")

struct PostView_Previews: PreviewProvider {
    
    static var previews: some View {
        List {
            PostView(
                article: PostModel(
                    article: PostResponse(
                        userId: 1,
                        id: 1,
                        title: "Title",
                        body: "Body"
                    )
                )
            )
        }
    }
}
