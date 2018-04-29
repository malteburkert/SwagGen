//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PlannedWork: Codable {

    public var createdDateTime: Date?

    public var description: String?

    public var id: String?

    public var lastUpdateDateTime: Date?

    public init(createdDateTime: Date? = nil, description: String? = nil, id: String? = nil, lastUpdateDateTime: Date? = nil) {
        self.createdDateTime = createdDateTime
        self.description = description
        self.id = id
        self.lastUpdateDateTime = lastUpdateDateTime
    }

    private enum CodingKeys: String, CodingKey {
        case createdDateTime
        case description
        case id
        case lastUpdateDateTime
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        createdDateTime = try container.decodeIfPresent(.createdDateTime)
        description = try container.decodeIfPresent(.description)
        id = try container.decodeIfPresent(.id)
        lastUpdateDateTime = try container.decodeIfPresent(.lastUpdateDateTime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(createdDateTime, forKey: .createdDateTime)
        try container.encode(description, forKey: .description)
        try container.encode(id, forKey: .id)
        try container.encode(lastUpdateDateTime, forKey: .lastUpdateDateTime)
    }
}
