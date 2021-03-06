/// This file is generated by Weaver 0.12.3
/// DO NOT EDIT!
import Foundation
import UIKit
// MARK: - ImageManager
protocol ImageManagerDependencyResolver {
    var logger: Logger { get }
    var urlSession: URLSession { get }
    var movieAPI: APIProtocol { get }
}
final class ImageManagerDependencyContainer: ImageManagerDependencyResolver {
    private var _logger: Logger?
    var logger: Logger {
        if let value = _logger { return value }
        let value = Logger()
        _logger = value
        return value
    }
    private var _urlSession: URLSession?
    var urlSession: URLSession {
        if let value = _urlSession { return value }
        let value = ImageManager.makeURLSession(self)
        _urlSession = value
        return value
    }
    private var _movieAPI: APIProtocol?
    var movieAPI: APIProtocol {
        if let value = _movieAPI { return value }
        let dependencies = MovieAPIDependencyContainer(injecting: self)
        let value = MovieAPI(injecting: dependencies)
        _movieAPI = value
        return value
    }
    init() {
        _ = logger
        _ = urlSession
        _ = movieAPI
    }
}
extension ImageManagerDependencyContainer: MovieAPIInputDependencyResolver {}
extension ImageManager {
    public convenience init() {
        let dependencies = ImageManagerDependencyContainer()
        self.init(injecting: dependencies)
    }
}