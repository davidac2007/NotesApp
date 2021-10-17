//
//  NotesAppApp.swift
//  NotesApp WatchKit Extension
//
//  Created by David Avendaño on 16/10/21.
//

import SwiftUI

@main
struct NotesAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListNotes()
            }
        }
    }
}
