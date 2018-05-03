//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class NumberOnly: Codable {

    public var justNumber: Double?

    public init(justNumber: Double? = nil) {
        self.justNumber = justNumber
    }

    private enum CodingKeys: String, CodingKey {
        case justNumber = "JustNumber"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        justNumber = try container.decodeIfPresent(.justNumber)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(justNumber, forKey: .justNumber)
    }
}