//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class StatusSeverity: Codable {

    public var description: String?

    public var modeName: String?

    public var severityLevel: Int?

    public init(description: String? = nil, modeName: String? = nil, severityLevel: Int? = nil) {
        self.description = description
        self.modeName = modeName
        self.severityLevel = severityLevel
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case modeName
        case severityLevel
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        modeName = try container.decodeIfPresent(.modeName)
        severityLevel = try container.decodeIfPresent(.severityLevel)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(description, forKey: .description)
        try container.encode(modeName, forKey: .modeName)
        try container.encode(severityLevel, forKey: .severityLevel)
    }
}
