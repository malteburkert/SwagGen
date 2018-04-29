//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class SearchResponse: Codable {

    public var from: Int?

    public var matches: [SearchMatch]?

    public var maxScore: Double?

    public var page: Int?

    public var pageSize: Int?

    public var provider: String?

    public var query: String?

    public var total: Int?

    public init(from: Int? = nil, matches: [SearchMatch]? = nil, maxScore: Double? = nil, page: Int? = nil, pageSize: Int? = nil, provider: String? = nil, query: String? = nil, total: Int? = nil) {
        self.from = from
        self.matches = matches
        self.maxScore = maxScore
        self.page = page
        self.pageSize = pageSize
        self.provider = provider
        self.query = query
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case from
        case matches
        case maxScore
        case page
        case pageSize
        case provider
        case query
        case total
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        from = try container.decodeIfPresent(.from)
        matches = try container.decodeIfPresent(.matches)
        maxScore = try container.decodeIfPresent(.maxScore)
        page = try container.decodeIfPresent(.page)
        pageSize = try container.decodeIfPresent(.pageSize)
        provider = try container.decodeIfPresent(.provider)
        query = try container.decodeIfPresent(.query)
        total = try container.decodeIfPresent(.total)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(from, forKey: .from)
        try container.encode(matches, forKey: .matches)
        try container.encode(maxScore, forKey: .maxScore)
        try container.encode(page, forKey: .page)
        try container.encode(pageSize, forKey: .pageSize)
        try container.encode(provider, forKey: .provider)
        try container.encode(query, forKey: .query)
        try container.encode(total, forKey: .total)
    }
}
