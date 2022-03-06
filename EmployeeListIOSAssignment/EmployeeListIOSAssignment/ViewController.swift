//
//  ViewController.swift
//  EmployeeListIOSAssignment
//
//  Created by Mateus Goncalves De Ouro on 01/03/2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    
    @IBOutlet weak var companyLabel: UILabel!
   
    struct employee{
        var fName : String
        var lName : String
        var age : Int
        var company : String
    }
    
    var employees : [employee] = []
    
    let e1 = employee(fName: "Mateus", lName: "Goncalves", age: 23, company: "ITC")
    let e2 = employee(fName: "Sai", lName: "Venkatesh", age: 21, company: "ITC")
    let e3 = employee(fName: "Sharad", lName: "Pun", age: 22, company: "ITC")
    let e4 = employee(fName: "Melvyn", lName: "jones", age: 20, company: "ITC")
    
    func populate(){
        employees = [e1, e2,e3,e4]
    }
     
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WorkerTableViewCell
        //cell.textLabel?.text = "cell - \(indexPath.row)"
        cell.firstNameLabel?.text = employees[indexPath.row].fName
        cell.lastNameLabel?.text = employees[indexPath.row].lName
        cell.ageLabel?.text = String(employees[indexPath.row].age)
        cell.companyLabel?.text = employees[indexPath.row].company
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        populate()
        tableView.dataSource = self
    }


}

