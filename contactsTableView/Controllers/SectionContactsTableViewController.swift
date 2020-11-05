//
//  SectionContactsTableViewController.swift
//  contactsTableView
//
//  Created by  Vadim Tatarchuk on 05.11.2020.
//

import UIKit

class SectionContactsTableViewController: UITableViewController {

    let contacts: [Person] = ContactsDataManager().getContacts()
    
    private var activeSection: Int! = 0

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        activeSection = section
        
        return "\(contacts[section].name) \(contacts[section].fullname)"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCellSection", for: indexPath)

        switch indexPath.row {
        case 0:
            cell.textLabel?.text = contacts[activeSection].phone
            cell.imageView?.image = UIImage(systemName: "phone")
        case 1:
            cell.textLabel?.text = contacts[activeSection].eMail
            cell.imageView?.image = UIImage(systemName: "mail")
        default:
            print("default")
        }
        return cell
    }

}
