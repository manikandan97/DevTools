//
//  Category.swift
//  DevTools
//
//  Created by Manikandan on 14/06/22.
//

import Foundation
import SwiftUI
 
struct Category: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
}
 
 
struct Setting: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var value: String {
        [
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            "Pretium viverra suspendisse potenti nullam ac tortor vitae purus.",
            "Laoreet suspendisse interdum consectetur libero id faucibus nisl.",
            "Faucibus et molestie ac feugiat sed lectus vestibulum.",
            "Faucibus et molestie ac feugiat sed lectus vestibulum."
        ][Int.random(in: 0..<5)]
    }
}
 
 
class CategoriesModel: ObservableObject {
    @Published var categories: [Category] = [Category(name: "Unix Timestamp Conversion"),
                                             Category(name: "Color Tool"),
                            
    ]
}
