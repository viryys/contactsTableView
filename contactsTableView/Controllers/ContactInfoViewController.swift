//
//  ContactInfoViewController.swift
//  contactsTableView
//
//  Created by  Vadim Tatarchuk on 05.11.2020.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
    }
    
    func configUI() {
        phoneLabel.text = person.phone
        emailLabel.text = person.eMail
        
        navigationItem.title = "\(person.name) \(person.fullname)"
    }
}
