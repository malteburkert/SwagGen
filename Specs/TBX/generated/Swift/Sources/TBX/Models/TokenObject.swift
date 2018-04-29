//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TokenObject: Codable {

    /** The Token ID */
    public var token: String

    public var idp: [String: Any]

    /** The Token type */
    public var type: String

    public var expiration: Date?

    public var remainingCredits: Double?

    public var uses: Double?

    public init(token: String, idp: [String: Any], type: String, expiration: Date? = nil, remainingCredits: Double? = nil, uses: Double? = nil) {
        self.token = token
        self.idp = idp
        self.type = type
        self.expiration = expiration
        self.remainingCredits = remainingCredits
        self.uses = uses
    }

    private enum CodingKeys: String, CodingKey {
        case token
        case idp
        case type
        case expiration
        case remainingCredits
        case uses
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        token = try container.decode(.token)
        idp = try container.decodeAny(.idp)
        type = try container.decode(.type)
        expiration = try container.decodeIfPresent(.expiration)
        remainingCredits = try container.decodeIfPresent(.remainingCredits)
        uses = try container.decodeIfPresent(.uses)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(token, forKey: .token)
        try container.encodeAny(idp, forKey: .idp)
        try container.encode(type, forKey: .type)
        try container.encode(expiration, forKey: .expiration)
        try container.encode(remainingCredits, forKey: .remainingCredits)
        try container.encode(uses, forKey: .uses)
    }
}
