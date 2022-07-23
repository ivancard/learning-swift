import Foundation
import Alamofire

class NetworkManager {
	
	func dispatch<T: Decodable>(
		request: RequestData,
		onComplete: @escaping (Any?) -> Void,
		onError: @escaping (String) -> Void,
		of: T.Type
	){
		AF.request(request.fullPath, method: request.method, parameters: request.parameters)
			.responseDecodable(of: T.self) { response in
				
				switch (response.result) {
					case .success:
						if let value = response.value {
							onComplete(value)
						} else {
							onError("Nil or void value")
						}
					case .failure(let AFerror):
						onError(AFerror.localizedDescription)
				}
			}
	}
}
