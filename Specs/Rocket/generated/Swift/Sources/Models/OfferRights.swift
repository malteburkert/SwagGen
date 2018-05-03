//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The base type for both Offer and Entitlement. */
public class OfferRights: Codable {

    /** The base type for both Offer and Entitlement. */
    public enum DeliveryType: String, Codable {
        case stream = "Stream"
        case download = "Download"
        case streamOrDownload = "StreamOrDownload"
        case progressiveDownload = "ProgressiveDownload"
        case none = "None"

        public static let cases: [DeliveryType] = [
          .stream,
          .download,
          .streamOrDownload,
          .progressiveDownload,
          .none,
        ]
    }

    /** The base type for both Offer and Entitlement. */
    public enum Resolution: String, Codable {
        case sd = "SD"
        case hd720 = "HD-720"
        case hd1080 = "HD-1080"
        case unknown = "Unknown"

        public static let cases: [Resolution] = [
          .sd,
          .hd720,
          .hd1080,
          .unknown,
        ]
    }

    /** The base type for both Offer and Entitlement. */
    public enum Ownership: String, Codable {
        case subscription = "Subscription"
        case free = "Free"
        case rent = "Rent"
        case own = "Own"
        case none = "None"

        public static let cases: [Ownership] = [
          .subscription,
          .free,
          .rent,
          .own,
          .none,
        ]
    }

    public var deliveryType: DeliveryType

    public var scopes: [String]

    public var resolution: Resolution

    public var ownership: Ownership

    /** Any specific playback exclusion rules. */
    public var exclusionRules: [ExclusionRule]?

    /** The maximum number of allowed downloads. */
    public var maxDownloads: Int?

    /** The maximum number of allowed plays. */
    public var maxPlays: Int?

    /** The length of time in minutes which the rental will last once played for the first time. */
    public var playPeriod: Int?

    /** The length of time in minutes which the rental will last once purchased. */
    public var rentalPeriod: Int?

    public init(deliveryType: DeliveryType, scopes: [String], resolution: Resolution, ownership: Ownership, exclusionRules: [ExclusionRule]? = nil, maxDownloads: Int? = nil, maxPlays: Int? = nil, playPeriod: Int? = nil, rentalPeriod: Int? = nil) {
        self.deliveryType = deliveryType
        self.scopes = scopes
        self.resolution = resolution
        self.ownership = ownership
        self.exclusionRules = exclusionRules
        self.maxDownloads = maxDownloads
        self.maxPlays = maxPlays
        self.playPeriod = playPeriod
        self.rentalPeriod = rentalPeriod
    }

    private enum CodingKeys: String, CodingKey {
        case deliveryType
        case scopes
        case resolution
        case ownership
        case exclusionRules
        case maxDownloads
        case maxPlays
        case playPeriod
        case rentalPeriod
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        deliveryType = try container.decode(.deliveryType)
        scopes = try container.decode(.scopes)
        resolution = try container.decode(.resolution)
        ownership = try container.decode(.ownership)
        exclusionRules = try container.decodeIfPresent(.exclusionRules)
        maxDownloads = try container.decodeIfPresent(.maxDownloads)
        maxPlays = try container.decodeIfPresent(.maxPlays)
        playPeriod = try container.decodeIfPresent(.playPeriod)
        rentalPeriod = try container.decodeIfPresent(.rentalPeriod)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(deliveryType, forKey: .deliveryType)
        try container.encode(scopes, forKey: .scopes)
        try container.encode(resolution, forKey: .resolution)
        try container.encode(ownership, forKey: .ownership)
        try container.encode(exclusionRules, forKey: .exclusionRules)
        try container.encode(maxDownloads, forKey: .maxDownloads)
        try container.encode(maxPlays, forKey: .maxPlays)
        try container.encode(playPeriod, forKey: .playPeriod)
        try container.encode(rentalPeriod, forKey: .rentalPeriod)
    }
}