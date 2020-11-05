//
//  TabbarViewController.swift
//  contactsTableView
//
//  Created by  Vadim Tatarchuk on 05.11.2020.
//

import UIKit

class TabbarViewController: UITabBarController {

    let contacts: [Person] = ContactsDataManager().getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let contactsVC = self.viewControllers?.first as! ContactsTableViewController
        contactsVC.contacts = contacts
        
        let sectionContactsVC = self.viewControllers?.last as! SectionContactsTableViewController
        sectionContactsVC.contacts = contacts
    }
}
