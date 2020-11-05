//
//  DataManager.swift
//  contactsTableView
//
//  Created by  Vadim Tatarchuk on 05.11.2020.
//

import Foundation

class ContactsDataManager {
    var email: [String] = [
        ""]
    
    var names: [String] = [
        "Dannette",
        "Delphia",
        "Josef",
        "Jovan",
        "Kristina",
        "Arnetta",
        "Daren",
        "Tamera",
        "Wilma",
        "Ona",
        "Jeremiah",
        "Andrew"
    ]
    
    var surnames: [String] = [
        "Arellano",
        "Clemans",
        "Storms",
        "Stelling",
        "Causby",
        "Achorn",
        "Ipock",
        "Ram",
        "Coons",
        "Bober",
        "Innocent",
        "Arthurs"
    ]

    var emails: [String] = [
        "apple@apple.com",
        "google@gmail.com",
        "yahoo@yahoo.com",
        "mail@mail.ru",
        "ya@ya.ru",
        "yandex@yandex.ru",
        "test@ya.ru",
        "test2@ya.ru",
        "test3@ya.ru",
        "test4@ya.ru",
        "test5@ya.ru",
        "test6@ya.ru",
    ]
    var phones: [String] = [
        "+7(922)444-22-55",
        "+7(922)555-22-44",
        "+7(922)666-11-33",
        "+7(922)777-00-22",
        "+7(922)888-99-11",
        "+7(922)999-88-00",
        "+7(922)000-77-99",
        "+7(922)111-66-11",
        "+7(922)222-55-11",
        "+7(922)333-44-11",
        "+7(922)500-33-11",
    ]
    
    var contacts: [Person] = []
    
    func getContacts () -> [Person] {
        let newNames = names.shuffled()
        let newSurnames = surnames.shuffled()
        let newEmails = emails.shuffled()
        let newPhones = phones.shuffled()
        
        var resultContacts: [Person] = []
        
        for i in 0...9 {
            resultContacts.append(
                Person(
                    name: newNames[i],
                    fullname: newSurnames[i],
                    phone: newPhones[i],
                    eMail: newEmails[i]
                )
            )
        }
        
        return resultContacts
    }
}
