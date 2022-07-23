import Foundation
import Alamofire

public struct User : Decodable {
	var firstName: String?
	var lastName: String?
	var email: String?
	var accessToken: String?
	var fullName: String { "\(self.firstName ?? "") \(self.lastName ?? "")" }
	
	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		firstName = try values.decodeIfPresent(String.self, forKey: .firsName)
		lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		accessToken = try values.decodeIfPresent(String.self, forKey: .accessToken)
	}
		
	enum CodingKeys: String, CodingKey {
		case firsName = "first_name"
		case lastName = "last_name"
		case email = "email"
		case accessToken = "access_token"
	}
}
