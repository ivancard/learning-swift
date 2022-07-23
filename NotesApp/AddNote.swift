//
//  AddNote.swift
//  NotesApp WatchKit Extension
//
//  Created by InfinixSoft Digital Solutions on 15/07/2022.
//

import SwiftUI

struct AddNote: View {
	
	@State private var notes = [Note]()
	@State private var text = ""
	@Environment(\.presentationMode) var presentation
	
    var body: some View {
		VStack{
			TextField("Nota", text: $text)
			Button("Add Note"){
				guard text.isEmpty == false else { return }
				let note = Note(title: text)
				notes.append(note)
				Tools.shared.save(notes: notes)
				text = ""
				presentation.wrappedValue.dismiss()
			}
		}.onAppear(perform: {
			notes = Tools.shared.load()
		})
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
