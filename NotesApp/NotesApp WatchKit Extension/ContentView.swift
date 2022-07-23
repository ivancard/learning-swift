//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by InfinixSoft Digital Solutions on 15/07/2022.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
		VStack{
			NavigationLink("Add Note", destination: AddNote())
			NavigationLink("List notes", destination: LIstNotes())
		}.navigationTitle("Notes App")
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
