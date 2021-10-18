//
//  Tools.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 17/10/21.
//

import Foundation

class Tools{
    let key: String = "NotesApp"
    
    static let shared = Tools()
    
    private init(){}
    
    func saveNote(notes: [Note]){
        let data = notes.map{try? JSONEncoder().encode($0)}
        UserDefaults.standard.set(data, forKey: key)
    }
    
    func loadNote() -> [Note]{
        guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else {
            return []
        }
        return savedData.map{
            try! JSONDecoder().decode(Note.self, from: $0)
        }
    }
}
