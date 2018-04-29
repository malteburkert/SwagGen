//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Fare: Codable {

    public var cap: Double?

    public var cost: String?

    public var description: String?

    public var id: Int?

    public var mode: String?

    public var passengerType: String?

    public var ticketTime: String?

    public var ticketType: String?

    public var validFrom: Date?

    public var validUntil: Date?

    public var zone: String?

    public init(cap: Double? = nil, cost: String? = nil, description: String? = nil, id: Int? = nil, mode: String? = nil, passengerType: String? = nil, ticketTime: String? = nil, ticketType: String? = nil, validFrom: Date? = nil, validUntil: Date? = nil, zone: String? = nil) {
        self.cap = cap
        self.cost = cost
        self.description = description
        self.id = id
        self.mode = mode
        self.passengerType = passengerType
        self.ticketTime = ticketTime
        self.ticketType = ticketType
        self.validFrom = validFrom
        self.validUntil = validUntil
        self.zone = zone
    }

    private enum CodingKeys: String, CodingKey {
        case cap
        case cost
        case description
        case id
        case mode
        case passengerType
        case ticketTime
        case ticketType
        case validFrom
        case validUntil
        case zone
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        cap = try container.decodeIfPresent(.cap)
        cost = try container.decodeIfPresent(.cost)
        description = try container.decodeIfPresent(.description)
        id = try container.decodeIfPresent(.id)
        mode = try container.decodeIfPresent(.mode)
        passengerType = try container.decodeIfPresent(.passengerType)
        ticketTime = try container.decodeIfPresent(.ticketTime)
        ticketType = try container.decodeIfPresent(.ticketType)
        validFrom = try container.decodeIfPresent(.validFrom)
        validUntil = try container.decodeIfPresent(.validUntil)
        zone = try container.decodeIfPresent(.zone)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(cap, forKey: .cap)
        try container.encode(cost, forKey: .cost)
        try container.encode(description, forKey: .description)
        try container.encode(id, forKey: .id)
        try container.encode(mode, forKey: .mode)
        try container.encode(passengerType, forKey: .passengerType)
        try container.encode(ticketTime, forKey: .ticketTime)
        try container.encode(ticketType, forKey: .ticketType)
        try container.encode(validFrom, forKey: .validFrom)
        try container.encode(validUntil, forKey: .validUntil)
        try container.encode(zone, forKey: .zone)
    }
}
