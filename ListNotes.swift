//
//  ListNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 17/10/21.
//

import SwiftUI

struct ListNotes: View {
    
    @State var notes = [Note]()
    
    var body: some View {
        
        VStack{
            
            Text("Notes \(notes.count)")
            
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
            
        }   .onAppear(perform: {
            notes = Tools.shared.loadNote()
        })
    }
    
    
    
    func delete(offsets: IndexSet){
        withAnimation {
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.saveNote(notes: notes)
    }
    
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
