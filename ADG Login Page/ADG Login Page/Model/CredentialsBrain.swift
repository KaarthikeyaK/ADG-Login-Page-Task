//
//  Credentials Brain.swift
//  ADG Login Page
//
//  Created by KAARTHIKEYA K on 28/05/22.
//

import Foundation

struct CredentialsBrain{
    
    let credentials = [Person(name: "Kaarthikeya_K", pass: "adgvit", reg: "21BCT0110", dom: "iOS", hob: "Occasional Cricket and Typing"),
                       Person(name: "Soumil_Sarna", pass: "adgvit", reg: "21BCE0000", dom: "iOS", hob: "Reading Books and Photography"),
                       Person(name: "Omkar", pass: "adgvit", reg: "21BCE0001", dom: "iOS", hob: "Calligraphy"),
                       Person(name: "Sanskriti", pass: "adgvit", reg: "21BCE0002", dom: "iOS", hob: "Dancing"),
                       Person(name: "Om_Desai", pass: "adgvit", reg: "21BCE0003", dom: "iOS", hob: "Skating"),
                       Person(name: "Prakhya_Pathak", pass: "adgvit", reg: "21BCE0004", dom: "iOS", hob: "Skating"),
                       Person(name: "Shashwat_Singh", pass: "adgvit", reg: "21BCE0005", dom: "iOS", hob: "Reading Books"),
                       Person(name: "Krishna_Prabhakar", pass: "adgvit", reg: "21BCE0005", dom: "iOS", hob: "Noves"),
                       Person(name: "Shambhavi", pass: "adgvit", reg: "21BCE0006", dom: "iOS", hob: "Singing"),
                       Person(name: "Harsh_Guptha", pass: "adgvit", reg: "21BCE0007", dom: "iOS", hob: "Gaming"),
                       Person(name: "Bhavya_Jain", pass: "adgvit", reg: "21BCE0008", dom: "iOS", hob: "Singing"),
                       Person(name: "Shivam_Dey", pass: "adgvit", reg: "21BCE0008", dom: "iOS", hob: "Table Tennis"),
                       Person(name: "Daksh Mehta", pass: "adgvit", reg: "21BCE0010", dom: "iOS", hob: "Tennis"),
                       Person(name: "Shikhar", pass: "adgvit", reg: "21BCE0011", dom: "iOS", hob: "Mobile Gaming"),
                       Person(name: "Khushagra Guptha", pass: "adgvit", reg: "21BCE0012", dom: "iOS", hob: "Professional Chess"),
                       Person(name: "Arnav_Jain", pass: "adgvit", reg: "21BCE0013", dom: "iOS", hob: "Cricketer"),
                       Person(name: "Pragya_Verma", pass: "adgvit", reg: "21BCE0014", dom: "iOS", hob: "Occasional Badminton"),
                       Person(name: "Moulik", pass: "adgvit", reg: "21BCE0015", dom: "iOS", hob: "Writing Bookos"),
                       Person(name: "Rangan_Ray", pass: "adgvit", reg: "21BCE0016", dom: "iOS", hob: "Professional Frisbee")]
    
    var level = -1
    
    mutating func checkUser(username: String) -> Bool{
        for user in 0..<credentials.count {
            if username == credentials[user].userName{
                level = user
            }
        }
        if level != -1 {
//            print("Success")
            return true
        } else {
//            print("Fail")
            return false
        }
    }
    
    
    func getName() -> String {
        return credentials[level].userName
    }
    func getReg() -> String {
        return credentials[level].regNo
    }
    func getDom() -> String {
        return credentials[level].domain
    }
    func getHob() -> String {
        return credentials[level].hobbies
    }
    
}
