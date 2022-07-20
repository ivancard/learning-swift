//
//  User.swift
//  FilmmerTP3
//
//  Created by InfinixSoft Digital Solutions on 13/07/2022.
//

import Foundation

struct User {
	var id: Int = 0
	var email: String
	var password: String
	var name: String
	var surname: String
	var fullName: String {
		"\(self.name) \(self.surname)"
	}
	var profileImage: String {
		"img\(self.name)"
	}
	
	init(email: String, password: String, name: String, surname: String) {
		self.email = email
		self.password = password
		self.name = name
		self.surname = surname
	}
}
