//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PaginationOptions: Codable {

    /** Specific item type filter. */
    public var itemType: ItemType?

    /** The maximum rating (inclusive) of items returned, e.g. 'AUOFLC-PG'. */
    public var maxRating: String?

    /** The applied sort order if any. */
    public var order: ListOrder?

    /** The applied sort ordering property if any. */
    public var orderBy: ListOrderBy?

    /** The number of items to return in a list page. */
    public var pageSize: Int?

    public init(itemType: ItemType? = nil, maxRating: String? = nil, order: ListOrder? = nil, orderBy: ListOrderBy? = nil, pageSize: Int? = nil) {
        self.itemType = itemType
        self.maxRating = maxRating
        self.order = order
        self.orderBy = orderBy
        self.pageSize = pageSize
    }

    private enum CodingKeys: String, CodingKey {
        case itemType
        case maxRating
        case order
        case orderBy
        case pageSize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        itemType = try container.decodeIfPresent(.itemType)
        maxRating = try container.decodeIfPresent(.maxRating)
        order = try container.decodeIfPresent(.order)
        orderBy = try container.decodeIfPresent(.orderBy)
        pageSize = try container.decodeIfPresent(.pageSize)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(itemType, forKey: .itemType)
        try container.encode(maxRating, forKey: .maxRating)
        try container.encode(order, forKey: .order)
        try container.encode(orderBy, forKey: .orderBy)
        try container.encode(pageSize, forKey: .pageSize)
    }
}
