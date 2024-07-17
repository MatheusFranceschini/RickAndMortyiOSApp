//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Matheus Franceschini on 15/07/24.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    
    /// API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endPoint: RMEndPoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for the API request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endPoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    /// Computed & constructed API URL
    public var url : URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endPoint: Target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endPoint: RMEndPoint, pathComponents: Set<String> = [], queryParameters: [URLQueryItem] = []) {
        self.endPoint = endPoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
