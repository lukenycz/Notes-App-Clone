//
//  Note.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import Foundation

class noteModel: Codable {
    var noteBody: String
    
        init(noteBody: String) {
            self.noteBody = noteBody
        }
}
