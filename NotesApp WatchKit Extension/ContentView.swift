//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 16/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var notes = Note(title: "One note")
    
    var body: some View {
        
        VStack{
            NavigationLink {
                AddNoteView()
            } label: {
                Text("Add Note")
            }
            
            NavigationLink {
                ListNotes()
            } label: {
                Text("Notes")
            }
        }.navigationTitle("Notes App")
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
