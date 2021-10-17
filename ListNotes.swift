//
//  ListNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 17/10/21.
//

import SwiftUI

struct ListNotes: View {
    
    @State var notes: [Note] = [Note(title: "1"),
                         Note(title: "2"),
                         Note(title: "3")]
    
    var body: some View {
        
        
        List{
            ForEach(0..<notes.count, id: \.self ){ i in
                NavigationLink(
                    destination: NoteDetails(note: notes[i]),
                    label: {
                        Text( notes[i].title)
                            .lineLimit(1)
                    })
            }.onDelete(perform: delete)
        }

    }
    func delete(offsets: IndexSet){
        withAnimation {
            notes.remove(atOffsets: offsets)
        }
        
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
