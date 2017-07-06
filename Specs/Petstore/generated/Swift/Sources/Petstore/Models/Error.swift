//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class ErrorType: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var code: Int

    public var message: String

    public init(code: Int, message: String) {
        self.code = code
        self.message = message
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        code = try jsonDictionary.json(atKeyPath: "code")
        message = try jsonDictionary.json(atKeyPath: "message")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["code"] = code
        dictionary["message"] = message
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}