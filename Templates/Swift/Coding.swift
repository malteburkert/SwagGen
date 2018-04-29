{% include "Includes/Header.stencil" %}

import Foundation

struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {

    private let string: String
    private let int: Int?

    var stringValue: String { return string }

    init(string: String) {
        self.string = string
        int = nil
    }
    init?(stringValue: String) {
        string = stringValue
        int = nil
    }

    var intValue: Int? { return int }
    init?(intValue: Int) {
        string = String(describing: intValue)
        int = intValue
    }

    init(stringLiteral value: String) {
        string = value
        int = nil
    }
}

// any json decoding
extension JSONDecoder {

    func decodeAny<T>(_ type: T.Type, from data: Data) throws -> T {
        guard let decoded = try decode(AnyCodable.self, from: data) as? T else {
            throw DecodingError.typeMismatch(T.self, DecodingError.Context(codingPath: [StringCodingKey(string: "")], debugDescription: "Decoding of \(T.self) failed"))
        }
        return decoded
    }
}

// any decoding
extension KeyedDecodingContainer {

    func decodeAny<T>(_ type: T.Type, forKey key: K) throws -> T {
        guard let value = try decode(AnyCodable.self, forKey: key).value as? T else {
            throw DecodingError.typeMismatch(T.self, DecodingError.Context(codingPath: codingPath, debugDescription: "Decoding of \(T.self) failed"))
        }
        return value
    }

    func decodeAnyIfPresent<T>(_ type: T.Type, forKey key: K) throws -> T? {
        guard let value = try decodeIfPresent(AnyCodable.self, forKey: key)?.value else { return nil }
        if let typedValue = value as? T {
            return typedValue
        } else {
            throw DecodingError.typeMismatch(T.self, DecodingError.Context(codingPath: codingPath, debugDescription: "Decoding of \(T.self) failed"))
        }
    }

    func toDictionary() throws -> [String: Any] {
        var dictionary: [String: Any] = [:]
        for key in allKeys {
            dictionary[key.stringValue] = try decodeAny(key)
        }
        return dictionary
    }
}

// any encoding
extension KeyedEncodingContainer {

    mutating func encodeAnyIfPresent<T>(_ value: T?, forKey key: K) throws {
        try encodeIfPresent(AnyCodable(value), forKey: key)
    }

    mutating func encodeAny<T>(_ value: T, forKey key: K) throws {
        try encode(AnyCodable(value), forKey: key)
    }
}

// generic extensions
extension KeyedDecodingContainer {

    func decode<T>(_ key: KeyedDecodingContainer.Key) throws -> T where T: Decodable {
        return try decode(T.self, forKey: key)
    }

    func decodeIfPresent<T>(_ key: KeyedDecodingContainer.Key) throws -> T? where T: Decodable {
        return try decodeIfPresent(T.self, forKey: key)
    }

    func decodeAny<T>(_ key: K) throws -> T {
        return try decodeAny(T.self, forKey: key)
    }

    func decodeAnyIfPresent<T>(_ key: K) throws -> T? {
        return try decodeAnyIfPresent(T.self, forKey: key)
    }
}

extension Date {
    func encode() -> Any {
        return String(data: try! APIClient.default.jsonEncoder.encode(self), encoding: .utf8) ?? ""
    }
}

extension URL {
    func encode() -> Any {
        return absoluteString
    }
}

extension RawRepresentable {
    func encode() -> Any {
        return rawValue
    }
}

extension Array where Element: RawRepresentable {
    func encode() -> [Any] {
        return map{ $0.rawValue }
    }
}

extension Dictionary where Key == String, Value: RawRepresentable {
    func encode() -> [String: Any] {
        return mapValues{ $0.rawValue }
    }
}
