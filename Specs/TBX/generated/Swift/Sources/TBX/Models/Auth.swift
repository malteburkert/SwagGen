//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Auth: Codable {

    public var status: Bool

    /** this appears if the user is logged in */
    public var userToken: String?

    public init(status: Bool, userToken: String? = nil) {
        self.status = status
        self.userToken = userToken
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case userToken = "user_token"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        userToken = try container.decodeIfPresent(.userToken)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encode(userToken, forKey: .userToken)
    }
}
