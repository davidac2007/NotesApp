//
//  NotesModel.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 16/10/21.
//

import SwiftUI

struct Note: Identifiable{
    var id: UUID
    var title: String
    var creationDate: String
    
    init(title: String){
        self.id = UUID()
        self.title = title
        
        let date = Date()
        let formatDate = DateFormatter()
        formatDate.dateStyle = .long
        formatDate.timeStyle = .medium
        
        self.creationDate = formatDate.string(from: date)
    }
    
}
