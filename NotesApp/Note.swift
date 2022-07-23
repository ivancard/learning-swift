import SwiftUI

struct Note: Codable, Identifiable {
	
	var id: UUID
	var title: String
	var creationDate: String
	
	init(title: String) {
		self.id = UUID()
		self.title = title
		
		let date = Date()
		let dateFormater = DateFormatter()
		dateFormater.dateStyle = .long
		dateFormater.timeStyle = .medium
		self.creationDate = dateFormater.string(from: date)
	}
}
