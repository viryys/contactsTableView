//
//  ContactsTableViewController.swift
//  contactsTableView
//
//  Created by  Vadim Tatarchuk on 05.11.2020.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var contacts: [Person] = []
    
    override func viewDidLoad() {
        super .viewDidLoad()

        print("third print")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as! ContactInfoViewController
        
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return
        }
        contactInfoVC.person = contacts[indexPath.row]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath)

        print("contacts data", contacts[indexPath.row])
        
        cell.textLabel?.text = "\(contacts[indexPath.row].name) \(contacts[indexPath.row].fullname)"
        
        return cell
    }
}
