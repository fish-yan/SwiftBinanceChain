import Foundation

extension Dictionary where Key == String, Value == any Any & Sendable {

    var query: String {
        let items: [URLQueryItem] = self.compactMap { URLQueryItem(name: $0.key, value: String(describing: $0.value)) }
        let url = NSURLComponents()
        url.queryItems = items
        return url.query ?? ""
    }

}

