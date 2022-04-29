//
//  NewsResponse.swift
//  SwiftUIxCombineXnewsAPI
//
//  Created by Jay Bergonia on 4/30/22.
//
 // from https://app.quicktype.io/
import Foundation

// MARK: - Welcome
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String
    let source, title, articleDescription: String
    let image: String
    let date: Date

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}
