//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 16/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var notes = Note(title: "One note", creationDate: "14/05/2021")
    
    var body: some View {
        Text("\(notes.title) - \(notes.creationDate)")
            .padding()
            .foregroundColor(Color.black)
            .background(Color.white)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
