//
//  RMEndPoint.swift
//  RickAndMorty
//
//  Created by Matheus Franceschini on 15/07/24.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndPoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
