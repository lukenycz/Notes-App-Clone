//
//  ViewController.swift
//  Notes-App-Clone
//
//  Created by Łukasz Nycz on 18/08/2021.
//

import UIKit




class ViewController: UITableViewController {
        
    var noteInTable = [String]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNote))
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteInTable.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let noteInfo = noteInTable[indexPath.row]
        cell.textLabel?.text = noteInfo
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "DetailVC") as? DetailViewController {

            navigationController?.pushViewController(vc, animated: true)
                    }
    }
    @objc func addNote() {
        
        if let vc = storyboard?.instantiateViewController(identifier: "DetailVC") as? DetailViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

