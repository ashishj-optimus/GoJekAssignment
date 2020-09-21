//
//  ContactListMock.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/12/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

public class ContactListMock {
    
    public static func getContact(id: Int = 1,
                    firstName: String = "First",
                    lastName: String = "Last",
                    profilePic: String = "",
                    favorite: Bool = false) -> Contact {
        return Contact(id: id,
                       firstName: firstName,
                       lastName: lastName,
                       profilePic: profilePic,
                       favorite: favorite,
                       profileDetailsLink: nil)
    }
    
    public static func getContactList(count: Int = 5) -> [Contact] {
        var contactList = [Contact]()
        for _ in 0..<count {
            contactList.append(getContact())
        }
        return contactList
    }
}
