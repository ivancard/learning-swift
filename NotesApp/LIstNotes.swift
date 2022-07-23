//
//  LIstNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by InfinixSoft Digital Solutions on 15/07/2022.
//

import SwiftUI

struct LIstNotes: View {
	@State var notes = [Note]()
    var body: some View {
		
		VStack{
			Text("Notes: \(notes.count)")
			List{
				ForEach(0..<notes.count, id: \.self){ i in
					NavigationLink(
						destination: DetailNote(note: notes[i]),
						label: {
							Text("\(notes[i].title)").lineLimit(1)
						})
				}.onDelete(perform: delete )
			}
		}.onAppear(perform: {
			notes = Tools.shared.load()
		})
    }
	
	func delete(offsets: IndexSet) {
		withAnimation{
			notes.remove(atOffsets: offsets)
		}
		Tools.shared.save(notes: notes)
	}
}

struct LIstNotes_Previews: PreviewProvider {
    static var previews: some View {
        LIstNotes()
    }
}
