//
//  ViewController.swift
//  AddingStudentsUsingMVCPattern
//
//  Created by Vikram Kunwar on 06/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StudentTableV: UITableView!
    
    var students: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func AddStudent(_ sender: UIBarButtonItem) {
        
        let newStudnet = Student(aname: "Student \(students.count + 1)", Aaddress: "Address\(students.count + 1)")
        students.append(newStudnet)
        StudentTableV.reloadData()
        
    }
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = students[indexPath.row].name
        cell?.detailTextLabel?.text = students[indexPath.row].address
        return cell!
    }
}

