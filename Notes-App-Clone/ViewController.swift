//
//  ViewController.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import UIKit

class noteModel: Codable {
    var noteTitle: String
    var noteBody: String
    
    init(noteTitle: String, noteBody: String) {
        self.noteTitle = noteTitle
        self.noteBody = noteBody
    }
}


class ViewController: UITableViewController {
    
    var noteModel: [noteModel]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteModel.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var isNoteModel = noteModel[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = isNoteModel.noteTitle
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    @objc func addNote() {
        
    }

}

