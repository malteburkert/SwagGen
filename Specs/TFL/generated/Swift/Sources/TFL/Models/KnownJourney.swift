//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class KnownJourney: Codable {

    public var hour: String?

    public var intervalId: Int?

    public var minute: String?

    public init(hour: String? = nil, intervalId: Int? = nil, minute: String? = nil) {
        self.hour = hour
        self.intervalId = intervalId
        self.minute = minute
    }

    private enum CodingKeys: String, CodingKey {
        case hour
        case intervalId
        case minute
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        hour = try container.decodeIfPresent(.hour)
        intervalId = try container.decodeIfPresent(.intervalId)
        minute = try container.decodeIfPresent(.minute)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(hour, forKey: .hour)
        try container.encode(intervalId, forKey: .intervalId)
        try container.encode(minute, forKey: .minute)
    }
}
