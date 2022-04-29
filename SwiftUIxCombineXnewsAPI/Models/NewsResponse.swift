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
    let url: String?
    let source, title, articleDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    
    static var dummyData: Article {
        .init(author: "David Keyton",
              url: "https://apnews.com/978fb92a44aad8f4fc297b9454ed7c0f",
              source: "Associated Press",
              title: "Ukraine: Attack on Kyiv was Putin's 'middle finger' to UN - The Associated Press",
              articleDescription: "KYIV, Ukraine (AP) — Ukrainian President Volodymyr Zelenskyy   accused Russia of trying to humiliate the United Nations by raining missiles on Kyiv during a visit to the city by the U.N.",
              image: "https://storage.googleapis.com/afs-prod/media/be59bf055ccf4ff481185acf12c85ed8/3000.jpeg",
              date: Date())
    }
}
