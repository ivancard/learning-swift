//
//  Tools.swift
//  NotesApp WatchKit Extension
//
//  Created by InfinixSoft Digital Solutions on 15/07/2022.
//

import Foundation
class Tools {
	let key: String = "NotesApp"
	static let shared = Tools()
	private init() {}
	
	
	func save(notes: [Note]) {
		let data = notes.map{ try? JSONEncoder().encode($0)}
		UserDefaults.standard.set(data, forKey: self.key )
	}
	
	func load() -> [Note] {
		guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else { return [] }
		return savedData.map{ try! JSONDecoder().decode(Note.self, from: $0)}
	}
}
