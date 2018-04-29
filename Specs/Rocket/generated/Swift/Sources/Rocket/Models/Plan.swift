//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Plan: Codable {

    /** The type of plan. */
    public enum `Type`: String, Codable {
        case free = "Free"
        case subscription = "Subscription"

        public static let cases: [`Type`] = [
          .free,
          .subscription,
        ]
    }

    /** The revenue type a plan targets. */
    public enum RevenueType: String, Codable {
        case tvod = "TVOD"
        case svod = "SVOD"

        public static let cases: [RevenueType] = [
          .tvod,
          .svod,
        ]
    }

    /** The type of billing period used. */
    public enum BillingPeriodType: String, Codable {
        case week = "week"
        case month = "month"
        case year = "year"
        case none = "none"

        public static let cases: [BillingPeriodType] = [
          .week,
          .month,
          .year,
          .none,
        ]
    }

    /** The identifier of a plan. */
    public var id: String

    /** The title of a plan. */
    public var title: String

    /** The short tagline for a plan. */
    public var tagline: String

    /** The type of plan. */
    public var type: `Type`

    /** True if a plan should be highlighted as featured, false if not. */
    public var isFeatured: Bool

    /** True if a plan is active, false if its retired. */
    public var isActive: Bool

    /** True if a plan should not be presented in the primary plan options, false if not. */
    public var isPrivate: Bool

    /** The revenue type a plan targets. */
    public var revenueType: RevenueType

    /** The subscription code a plan targets. */
    public var subscriptionCode: String

    /** An alias for a plan. */
    public var alias: String

    /** The list of benefits to display for a plan. */
    public var benefits: [String]

    /** The type of billing period used. */
    public var billingPeriodType: BillingPeriodType

    /** Given the `billingPeriodType` this is how frequently it will run. e.g. every 2 weeks. */
    public var billingPeriodFrequency: Int

    /** True if a plan has a trial period, false if not. */
    public var hasTrialPeriod: Bool

    /** How many days a trial period runs for a plan. Only valid if `hasTrialPeriod` is true. */
    public var trialPeriodDays: Int

    /** The terms and conditions for a plan. */
    public var termsAndConditions: String

    /** The currency a plan is offered in. */
    public var currency: String

    /** A map of custom fields defined by a curator for a plan. */
    public var customFields: [String: Any]?

    /** The price of a plan. If a free plan then undefined. */
    public var price: Float?

    public init(id: String, title: String, tagline: String, type: `Type`, isFeatured: Bool, isActive: Bool, isPrivate: Bool, revenueType: RevenueType, subscriptionCode: String, alias: String, benefits: [String], billingPeriodType: BillingPeriodType, billingPeriodFrequency: Int, hasTrialPeriod: Bool, trialPeriodDays: Int, termsAndConditions: String, currency: String, customFields: [String: Any]? = nil, price: Float? = nil) {
        self.id = id
        self.title = title
        self.tagline = tagline
        self.type = type
        self.isFeatured = isFeatured
        self.isActive = isActive
        self.isPrivate = isPrivate
        self.revenueType = revenueType
        self.subscriptionCode = subscriptionCode
        self.alias = alias
        self.benefits = benefits
        self.billingPeriodType = billingPeriodType
        self.billingPeriodFrequency = billingPeriodFrequency
        self.hasTrialPeriod = hasTrialPeriod
        self.trialPeriodDays = trialPeriodDays
        self.termsAndConditions = termsAndConditions
        self.currency = currency
        self.customFields = customFields
        self.price = price
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case tagline
        case type
        case isFeatured
        case isActive
        case isPrivate
        case revenueType
        case subscriptionCode
        case alias
        case benefits
        case billingPeriodType
        case billingPeriodFrequency
        case hasTrialPeriod
        case trialPeriodDays
        case termsAndConditions
        case currency
        case customFields
        case price
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        title = try container.decode(.title)
        tagline = try container.decode(.tagline)
        type = try container.decode(.type)
        isFeatured = try container.decode(.isFeatured)
        isActive = try container.decode(.isActive)
        isPrivate = try container.decode(.isPrivate)
        revenueType = try container.decode(.revenueType)
        subscriptionCode = try container.decode(.subscriptionCode)
        alias = try container.decode(.alias)
        benefits = try container.decode(.benefits)
        billingPeriodType = try container.decode(.billingPeriodType)
        billingPeriodFrequency = try container.decode(.billingPeriodFrequency)
        hasTrialPeriod = try container.decode(.hasTrialPeriod)
        trialPeriodDays = try container.decode(.trialPeriodDays)
        termsAndConditions = try container.decode(.termsAndConditions)
        currency = try container.decode(.currency)
        customFields = try container.decodeAnyIfPresent(.customFields)
        price = try container.decodeIfPresent(.price)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(tagline, forKey: .tagline)
        try container.encode(type, forKey: .type)
        try container.encode(isFeatured, forKey: .isFeatured)
        try container.encode(isActive, forKey: .isActive)
        try container.encode(isPrivate, forKey: .isPrivate)
        try container.encode(revenueType, forKey: .revenueType)
        try container.encode(subscriptionCode, forKey: .subscriptionCode)
        try container.encode(alias, forKey: .alias)
        try container.encode(benefits, forKey: .benefits)
        try container.encode(billingPeriodType, forKey: .billingPeriodType)
        try container.encode(billingPeriodFrequency, forKey: .billingPeriodFrequency)
        try container.encode(hasTrialPeriod, forKey: .hasTrialPeriod)
        try container.encode(trialPeriodDays, forKey: .trialPeriodDays)
        try container.encode(termsAndConditions, forKey: .termsAndConditions)
        try container.encode(currency, forKey: .currency)
        try container.encodeAny(customFields, forKey: .customFields)
        try container.encode(price, forKey: .price)
    }
}
