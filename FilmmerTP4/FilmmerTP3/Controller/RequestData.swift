import Foundation
import Alamofire

class RequestData {
	let endpoint: String
	let method: HTTPMethod
	let parameters: [String : Any ]
	let headers: [String : String]?
	
	private let URLPath: String = "https://infinixapp.xanthops.com/api/v1/"
	
	var fullPath: String { URLPath + endpoint }
	
	init(
		endPoint: String,
		method: HTTPMethod = .get,
		parameters: [String : Any],
		headers: [String : String]? = nil
	) {
		self.endpoint = endPoint
		self.method = method
		self.parameters = parameters
		self.headers = headers
	}
}
