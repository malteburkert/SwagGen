//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AccountUpdateRequest: Codable {

    /** The id of the payment instrument to use by default for account transactions. */
    public var defaultPaymentInstrumentId: String?

    /** The first name of the account holder. */
    public var firstName: String?

    /** The last name of the account holder. */
    public var lastName: String?

    /** The classification rating defining the minimum rating level a user should be
forced to enter the account pin code for playback. Anything at this rating
level or above will require the pin for playback.

e.g. AUOFLC-MA15+

If you want to disable this guard pass an empty string or `null`.
 */
    public var minRatingPlaybackGuard: String?

    /** Whether usage tracking is associated with an account or anonymous. */
    public var trackingEnabled: Bool?

    public init(defaultPaymentInstrumentId: String? = nil, firstName: String? = nil, lastName: String? = nil, minRatingPlaybackGuard: String? = nil, trackingEnabled: Bool? = nil) {
        self.defaultPaymentInstrumentId = defaultPaymentInstrumentId
        self.firstName = firstName
        self.lastName = lastName
        self.minRatingPlaybackGuard = minRatingPlaybackGuard
        self.trackingEnabled = trackingEnabled
    }

    private enum CodingKeys: String, CodingKey {
        case defaultPaymentInstrumentId
        case firstName
        case lastName
        case minRatingPlaybackGuard
        case trackingEnabled
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        defaultPaymentInstrumentId = try container.decodeIfPresent(.defaultPaymentInstrumentId)
        firstName = try container.decodeIfPresent(.firstName)
        lastName = try container.decodeIfPresent(.lastName)
        minRatingPlaybackGuard = try container.decodeIfPresent(.minRatingPlaybackGuard)
        trackingEnabled = try container.decodeIfPresent(.trackingEnabled)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(defaultPaymentInstrumentId, forKey: .defaultPaymentInstrumentId)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(minRatingPlaybackGuard, forKey: .minRatingPlaybackGuard)
        try container.encode(trackingEnabled, forKey: .trackingEnabled)
    }
}
