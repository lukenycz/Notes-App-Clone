//
//  ViewController.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import UIKit




class ViewController: UITableViewController {
    
    var note = [noteModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
        
       // tableView.separatorColor = .none
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return note.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let isNote = note[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = isNote.noteTitle
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "DetailVC") {
            
        present(vc, animated: true)
        }
    }
    @objc func addNote() {
        
        if let vc = storyboard?.instantiateViewController(identifier: "DetailVC") as? DetailViewController {
            navigationController?.pushViewController(vc, animated: true)
            
        }
//        let ac = UIAlertController(title: "Note Title:", message: nil, preferredStyle: .alert)
//        ac.addTextField()
//
//        let submitAction = UIAlertAction(title: "Submit", style: .default) {
//            [weak self, weak ac] action in
//            guard let item = ac?.textFields?[0].text else { return }
//            self?.submit(item)
//        }
//        ac.addAction(submitAction)
//        present(ac, animated: true)
//    }
//    func submit(_ note:String) {
//        let lowerItem = note.lowercased()
//        noteModel.init(noteTitle: note, noteBody: "")
//
//        let indexPath = IndexPath(row: 0, section: 0)
//        tableView.insertRows(at: [indexPath], with: .automatic)
//    }

    }
}

