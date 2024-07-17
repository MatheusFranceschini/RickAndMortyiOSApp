//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Matheus Franceschini on 15/07/24.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
