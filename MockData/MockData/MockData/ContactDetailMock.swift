//
//  ContactDetailMock.swift
//  GoServices
//
//  Created by Ashish Jindal on 10/12/19.
//  Copyright © 2019 ashishjindal. All rights reserved.
//

public class ContactDetailMock {
    
    public static func getContactDetail(id: Int = 1,
                    firstName: String = "First",
                    lastName: String = "Last",
                    email: String = "Last@mail.com",
                    phone: String = "1234567890",
                    profilePic: String = "",
                    favorite: Bool = false) -> ContactDetail {
        return ContactDetail(id: id,
                             firstName: firstName,
                             lastName: lastName,
                             email: email,
                             phone: phone,
                             profilePic: profilePic,
                             favorite: favorite)
    }
}
