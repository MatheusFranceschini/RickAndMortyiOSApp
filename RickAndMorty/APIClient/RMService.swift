//
//  RMService.swift
//  RickAndMorty
//
//  Created by Matheus Franceschini on 15/07/24.
//

import Foundation

/// Primary API Service Object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    ///Privatized constructor
    private init() { }
    
    ///Send Rick and Morty API Call
    /// - Parameters:
    ///    - request: Request instance
    ///    - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
