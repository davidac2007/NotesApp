//
//  NoteDetails.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 17/10/21.
//

import SwiftUI

struct NoteDetails: View {
    
    let note: Note
    
    var body: some View {
        
        VStack(spacing: 100.0){
            Text(note.title)
                .font(.system(size: 25.0))
                .fontWeight(.bold)
                
            Text(note.creationDate)
                .font(.system(size: 15.0))
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
              
        }
         
    }
}

struct NoteDetails_Previews: PreviewProvider {
    static var previews: some View {
        NoteDetails(note: Note(title: "Note"))
    }
}
