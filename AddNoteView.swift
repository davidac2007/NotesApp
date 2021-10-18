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
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack(spacing: 10.0){
            TextField("Note...", text: $text)
            Button("Add note"){
                guard !text.isEmpty else{
                    return
                }
                let note = Note(title: text)
                notes.append(note)
                Tools.shared.saveNote(notes: notes)
                text = ""
                presentation.wrappedValue.dismiss()
            }
        }.onAppear(perform: {
            notes = Tools.shared.loadNote()
        })
        
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
