//
//  AddNoteView.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 16/10/21.
//

import SwiftUI

struct AddNoteView: View {
    
    @State private var notes = [Note]()
    @State private var text: String = ""
    var body: some View {
        TextField("nota", text: $text)
        Button("Add note"){
            guard !text.isEmpty else{
                return
            }
            let note = Note(title: text, creationDate: "26/12/02")
            notes.append(note)
            text = ""
        }
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
