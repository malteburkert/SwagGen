//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TicketType: Codable {

    public var description: String?

    public var type: String?

    public init(description: String? = nil, type: String? = nil) {
        self.description = description
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        type = try container.decodeIfPresent(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(description, forKey: .description)
        try container.encode(type, forKey: .type)
    }
}
