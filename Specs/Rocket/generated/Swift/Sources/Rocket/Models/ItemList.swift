//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A pageable list of items. */
public class ItemList: Codable {

    /** The id of this list */
    public var id: String

    /** The total size of the list */
    public var size: Int

    /** A list of items */
    public var items: [ItemSummary]

    /** Metadata describing how to load the next or previous page of the list */
    public var paging: Pagination

    /** The path of this list */
    public var path: String

    /** A map of custom fields defined by a curator for a list. */
    public var customFields: [String: Any]?

    /** A full description of this list. */
    public var description: String?

    public var images: [String: URL]?

    /** The types of items in the list */
    public var itemTypes: [ItemType]?

    /** If this list is parameterized, then this contains the parameter of the list in the format `name:value`.
For example the Movies Genre list will take a parameter `genre` with a given value. e.g. `genre:action` or `genre:drama`. */
    public var parameter: String?

    /** A short description of this list. */
    public var shortDescription: String?

    /** The tagline of the item. */
    public var tagline: String?

    /** The title of this list */
    public var title: String?

    public init(id: String, size: Int, items: [ItemSummary], paging: Pagination, path: String, customFields: [String: Any]? = nil, description: String? = nil, images: [String: URL]? = nil, itemTypes: [ItemType]? = nil, parameter: String? = nil, shortDescription: String? = nil, tagline: String? = nil, title: String? = nil) {
        self.id = id
        self.size = size
        self.items = items
        self.paging = paging
        self.path = path
        self.customFields = customFields
        self.description = description
        self.images = images
        self.itemTypes = itemTypes
        self.parameter = parameter
        self.shortDescription = shortDescription
        self.tagline = tagline
        self.title = title
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case size
        case items
        case paging
        case path
        case customFields
        case description
        case images
        case itemTypes
        case parameter
        case shortDescription
        case tagline
        case title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        size = try container.decode(.size)
        items = try container.decode(.items)
        paging = try container.decode(.paging)
        path = try container.decode(.path)
        customFields = try container.decodeAnyIfPresent(.customFields)
        description = try container.decodeIfPresent(.description)
        images = try container.decodeIfPresent(.images)
        itemTypes = try container.decodeIfPresent(.itemTypes)
        parameter = try container.decodeIfPresent(.parameter)
        shortDescription = try container.decodeIfPresent(.shortDescription)
        tagline = try container.decodeIfPresent(.tagline)
        title = try container.decodeIfPresent(.title)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(size, forKey: .size)
        try container.encode(items, forKey: .items)
        try container.encode(paging, forKey: .paging)
        try container.encode(path, forKey: .path)
        try container.encodeAny(customFields, forKey: .customFields)
        try container.encode(description, forKey: .description)
        try container.encode(images, forKey: .images)
        try container.encode(itemTypes, forKey: .itemTypes)
        try container.encode(parameter, forKey: .parameter)
        try container.encode(shortDescription, forKey: .shortDescription)
        try container.encode(tagline, forKey: .tagline)
        try container.encode(title, forKey: .title)
    }
}
