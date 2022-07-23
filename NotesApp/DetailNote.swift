//
//  DetailNote.swift
//  NotesApp WatchKit Extension
//
//  Created by InfinixSoft Digital Solutions on 15/07/2022.
//

import SwiftUI

struct DetailNote: View {
	let note: Note
    var body: some View {
		VStack{
			Text(note.title)
				.font(.system(size: 20))
				.foregroundColor(.white)
				.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
			Spacer()
			Text(note.creationDate)
				.font(.system(size: 12))
				.foregroundColor(.gray)
		}
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "Hola"))
    }
}
