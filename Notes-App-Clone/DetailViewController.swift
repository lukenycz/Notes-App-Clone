//
//  DetailViewController.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var noteText: UITextView!

    var noteBody:String = ""
    
    var valueNote: String = ""
    
    var noteToArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backToVC))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(done))
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    @objc func done() {
        if let  vc = storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController {
            
            let noteBody = noteModel(noteBody: "\(String(describing: noteText.text))")
            let valueNote = noteBody.noteBody
            noteToArray.append(valueNote)
            vc.noteInTable = noteToArray
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func backToVC(){
        dismiss(animated: true)
    }
}
