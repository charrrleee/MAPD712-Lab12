//
//  PostResponseModel.swift
//  MAPD712-Lab12
//
//  Created by Charlene Cheung on 30/11/2022.
//

import Foundation
struct PostResponse: Codable {
    let userId: Int
    let id: Int?
    let title: String?
    let body: String?
}
