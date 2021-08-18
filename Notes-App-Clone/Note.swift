//
//  Note.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import Foundation

class noteModel: Codable {
    var noteTitle: String
    var noteBody: String
    
        init(noteTitle: String, noteBody: String) {
            self.noteTitle = noteTitle
            self.noteBody = noteBody
        }
}
