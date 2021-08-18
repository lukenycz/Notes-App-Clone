//
//  DetailViewController.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var noteText: UITextView!
    
    var note = [noteModel]()
    
    var test = noteModel.self
    
    override func viewDidLoad() {
        super.viewDidLoad()


        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backToVC))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(done))
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    @objc func done() {
        noteText.text = test.
        
    }
    
    @objc func backToVC(){
        dismiss(animated: true)
    }
}
