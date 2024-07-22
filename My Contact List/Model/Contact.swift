//
//  Contact.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import Foundation
import SwiftUI

struct Contact {
    var name: String
    var email: String
    var phone: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
}
