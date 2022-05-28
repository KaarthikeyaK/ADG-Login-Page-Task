//
//  Credentials.swift
//  ADG Login Page
//
//  Created by KAARTHIKEYA K on 28/05/22.
//

import Foundation

struct Person {
    var userName : String
    var password : String
    var domain : String
    var regNo : String
    var hobbies : String
    
    init(name: String, pass: String, reg: String, dom: String, hob: String){
        userName = name
        password = pass
        regNo = reg
        domain = dom
        hobbies = hob
    }
}
