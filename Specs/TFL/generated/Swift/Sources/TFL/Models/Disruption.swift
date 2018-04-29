//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Represents a disruption to a route within the transport network. */
public class Disruption: Codable {

    /** Gets or sets the category of this dispruption. */
    public enum Category: String, Codable {
        case undefined = "Undefined"
        case realTime = "RealTime"
        case plannedWork = "PlannedWork"
        case information = "Information"
        case event = "Event"
        case crowding = "Crowding"
        case statusAlert = "StatusAlert"

        public static let cases: [Category] = [
          .undefined,
          .realTime,
          .plannedWork,
          .information,
          .event,
          .crowding,
          .statusAlert,
        ]
    }

    /** Gets or sets the additionaInfo of this disruption. */
    public var additionalInfo: String?

    /** Gets or sets the routes affected by this disruption */
    public var affectedRoutes: [RouteSection]?

    /** Gets or sets the stops affected by this disruption */
    public var affectedStops: [StopPoint]?

    /** Gets or sets the category of this dispruption. */
    public var category: Category?

    /** Gets or sets the description of the category. */
    public var categoryDescription: String?

    public var closureText: String?

    /** Gets or sets the date/time when this disruption was created. */
    public var created: Date?

    /** Gets or sets the description of this disruption. */
    public var description: String?

    public var isBlocking: Bool?

    public var isWholeLine: Bool?

    /** Gets or sets the date/time when this disruption was last updated. */
    public var lastUpdate: Date?

    /** Gets or sets the disruption type of this dispruption. */
    public var type: String?

    public init(additionalInfo: String? = nil, affectedRoutes: [RouteSection]? = nil, affectedStops: [StopPoint]? = nil, category: Category? = nil, categoryDescription: String? = nil, closureText: String? = nil, created: Date? = nil, description: String? = nil, isBlocking: Bool? = nil, isWholeLine: Bool? = nil, lastUpdate: Date? = nil, type: String? = nil) {
        self.additionalInfo = additionalInfo
        self.affectedRoutes = affectedRoutes
        self.affectedStops = affectedStops
        self.category = category
        self.categoryDescription = categoryDescription
        self.closureText = closureText
        self.created = created
        self.description = description
        self.isBlocking = isBlocking
        self.isWholeLine = isWholeLine
        self.lastUpdate = lastUpdate
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case additionalInfo
        case affectedRoutes
        case affectedStops
        case category
        case categoryDescription
        case closureText
        case created
        case description
        case isBlocking
        case isWholeLine
        case lastUpdate
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        additionalInfo = try container.decodeIfPresent(.additionalInfo)
        affectedRoutes = try container.decodeIfPresent(.affectedRoutes)
        affectedStops = try container.decodeIfPresent(.affectedStops)
        category = try container.decodeIfPresent(.category)
        categoryDescription = try container.decodeIfPresent(.categoryDescription)
        closureText = try container.decodeIfPresent(.closureText)
        created = try container.decodeIfPresent(.created)
        description = try container.decodeIfPresent(.description)
        isBlocking = try container.decodeIfPresent(.isBlocking)
        isWholeLine = try container.decodeIfPresent(.isWholeLine)
        lastUpdate = try container.decodeIfPresent(.lastUpdate)
        type = try container.decodeIfPresent(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(additionalInfo, forKey: .additionalInfo)
        try container.encode(affectedRoutes, forKey: .affectedRoutes)
        try container.encode(affectedStops, forKey: .affectedStops)
        try container.encode(category, forKey: .category)
        try container.encode(categoryDescription, forKey: .categoryDescription)
        try container.encode(closureText, forKey: .closureText)
        try container.encode(created, forKey: .created)
        try container.encode(description, forKey: .description)
        try container.encode(isBlocking, forKey: .isBlocking)
        try container.encode(isWholeLine, forKey: .isWholeLine)
        try container.encode(lastUpdate, forKey: .lastUpdate)
        try container.encode(type, forKey: .type)
    }
}
