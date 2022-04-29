//
//  ResultState.swift
//  SwiftUIxCombineXnewsAPI
//
//  Created by Jay Bergonia on 4/30/22.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
