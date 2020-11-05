//
//  ContactsTableViewController.swift
//  contactsTableView
//
//  Created by  Vadim Tatarchuk on 05.11.2020.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    let contacts: [Person] = ContactsDataManager().getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("contacts", contacts)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
