//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TBX.UserService {

    public enum UserServiceCreateTryAndBuy {

        public static let service = APIService<Response>(id: "UserService.createTryAndBuy", tag: "UserService", method: "POST", path: "/UserServices/{customer}/tryAndBuy", hasBody: true)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The customer ID */
                public var customer: String

                /** Days to the expiration */
                public var days: Double

                /** Only to this device */
                public var device: String?

                public init(customer: String, days: Double, device: String? = nil) {
                    self.customer = customer
                    self.days = days
                    self.device = device
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: UserServiceCreateTryAndBuy.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(customer: String, days: Double, device: String? = nil) {
                let options = Options(customer: customer, days: days, device: device)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "customer" + "}", with: "\(self.options.customer)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["days"] = options.days
                if let device = options.device {
                  params["device"] = device
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = TryAndBuyObject

            /** Request was successful */
            case status200(TryAndBuyObject)

            /** Bad Request  */
            case status400(ResponseError)

            /** Unauthorized  */
            case status401(ResponseError)

            /** Customer or Device not Found */
            case status404(ResponseError)

            /** Device was Logged Out or the customer not longer exists */
            case status410(ResponseError)

            public var success: TryAndBuyObject? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: ResponseError? {
                switch self {
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<TryAndBuyObject, ResponseError> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status400(let response): return response
                case .status401(let response): return response
                case .status404(let response): return response
                case .status410(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status410: return 410
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status410: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: JSONDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(TryAndBuyObject.self, from: data))
                case 400: self = try .status400(decoder.decode(ResponseError.self, from: data))
                case 401: self = try .status401(decoder.decode(ResponseError.self, from: data))
                case 404: self = try .status404(decoder.decode(ResponseError.self, from: data))
                case 410: self = try .status410(decoder.decode(ResponseError.self, from: data))
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
