//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents a point located at a latitude and longitude using the WGS84 co-ordinate system. */
public class Point: Codable {

    /** WGS84 latitude of the location. */
    public var lat: Double?

    /** WGS84 longitude of the location. */
    public var lon: Double?

    public init(lat: Double? = nil, lon: Double? = nil) {
        self.lat = lat
        self.lon = lon
    }

    private enum CodingKeys: String, CodingKey {
        case lat
        case lon
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        lat = try container.decodeIfPresent(.lat)
        lon = try container.decodeIfPresent(.lon)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(lat, forKey: .lat)
        try container.encode(lon, forKey: .lon)
    }
}