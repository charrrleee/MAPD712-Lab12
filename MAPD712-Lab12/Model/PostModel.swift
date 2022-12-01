//
//  PostModel.swift
//  MAPD712-Lab12
//
//  Created by Charlene Cheung on 30/11/2022.
//


import UIKit
class PostModel: Identifiable {
    
    let id = UUID()
    let post: PostResponse
    var isSelected = false
    
    init(article: PostResponse) {
        self.post = article
    }
    
    var title: String {
        return post.title ?? ""
    }
    
    var description: String {
        return post.body ?? ""
    }
    
    
}
