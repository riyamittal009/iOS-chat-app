//
//  Models.swift
//  iOS-chat-app
//
//  Created by Riya Mittal on 8/11/22.
//

import Foundation

struct Chat: Identifiable {
    var id: UUID { person.id }
    let person: Person
    var messages: [Message]
    var hasUnreadMessage = false
}

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let imgString: String
}

struct Message: Identifiable {
    
    enum MessageType {
        case Sent, Received
    }
    
    let id = UUID()
    let date: Date
    let text: String
    let type: MessageType
    
    init(_ text: String, type: MessageType) {
        self.text = text
        self.type = type
        self.date = Date()
    }
}

extension Chat {
    static let sampleChats = [
        Chat(person: Person(firstName: "Anika", lastName: "Arora", imgString: "img1"), messages: [
            Message("Hey anika how are you doing", type: .Sent),
            Message("I'm doing well thank you how are you", type: .Received),
            Message("ruweiufisncsdnjvsdhivhsdjvsdjvnsdjvnsvjd", type: .Sent),
            Message("eusifdscmadijcaiohduahdaiodjaodoajdaodhadhaod", type: .Received),
            Message("sdkfjsodjfosdufsdjfsdjofjadjfoisjfosdjfos", type: .Sent),
            Message("dfjosdjfoisjdfihdsufhsuidfhsudhfjsdnfjenjsfbwiur", type: .Sent),
            Message("snfdishfusdhfjfojwoejfmdkcmjsdcusdcdsiuch", type: .Received),
            Message("sjfsfhuisdhfjsdcusytqwtetqetqywuqeu9rqeurioejr", type: .Received),
            Message("3u4u98urt2894cry2hfkichrugnkhqbgfalfuhau hfuhu", type: .Sent),
            Message("wa3ucqotyvsgncutwytru8qhxufhomakuciyfncuqyfqningq ty", type: .Received),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(firstName: "Monica", lastName: "Manmadkar", imgString: "img1"), messages: [
            Message("hfshflashfiahdsfhsuiHFLUSHFLIAUHDSUIFHSDHF", type: .Sent),
            Message("fnjsnfjsfjsdnfkjsdjfskdfnjsnfew", type: .Received),
            Message("ruweiufisncsdnjvsdhivhsdjvsdjvnsdjvnsvjd", type: .Sent),
            Message("eusifdscmadijcaiohduahdaiodjaodoajdaodhadhaod", type: .Received),
            Message("sdkfjsodjfosdufsdjfsdjofjadjfoisjfosdjfos", type: .Sent),
            Message("dfjosdjfoisjdfihdsufhsuidfhsudhfjsdnfjenjsfbwiur", type: .Sent),
            Message("snfdishfusdhfjfojwoejfmdkcmjsdcusdcdsiuch", type: .Received),
            Message("sjfsfhuisdhfjsdcusytqwtetqetqywuqeu9rqeurioejr", type: .Received),
            Message("3u4u98urt2894cry2hfkichrugnkhqbgfalfuhau hfuhu", type: .Sent),
            Message("wa3ucqotyvsgncutwytru8qhxufhomakuciyfncuqyfqningq ty", type: .Received),
        ], hasUnreadMessage: true),
        
        Chat(person: Person(firstName: "Saksham", lastName: "Tikekar", imgString: "img1"), messages: [
            Message("hfshflashfiahdsfhsuiHFLUSHFLIAUHDSUIFHSDHF", type: .Sent),
            Message("fnjsnfjsfjsdnfkjsdjfskdfnjsnfew", type: .Received),
            Message("ruweiufisncsdnjvsdhivhsdjvsdjvnsdjvnsvjd", type: .Sent),
            Message("eusifdscmadijcaiohduahdaiodjaodoajdaodhadhaod", type: .Received),
            Message("sdkfjsodjfosdufsdjfsdjofjadjfoisjfosdjfos", type: .Sent),
            Message("dfjosdjfoisjdfihdsufhsuidfhsudhfjsdnfjenjsfbwiur", type: .Sent),
            Message("snfdishfusdhfjfojwoejfmdkcmjsdcusdcdsiuch", type: .Received),
            Message("sjfsfhuisdhfjsdcusytqwtetqetqywuqeu9rqeurioejr", type: .Received),
            Message("3u4u98urt2894cry2hfkichrugnkhqbgfalfuhau hfuhu", type: .Sent),
            Message("wa3ucqotyvsgncutwytru8qhxufhomakuciyfncuqyfqningq ty", type: .Received),
        ]),
        
        Chat(person: Person(firstName: "Mudit", lastName: "Mittal", imgString: "img1"), messages: [
            Message("hfshflashfiahdsfhsuiHFLUSHFLIAUHDSUIFHSDHF", type: .Sent),
            Message("fnjsnfjsfjsdnfkjsdjfskdfnjsnfew", type: .Received),
            Message("ruweiufisncsdnjvsdhivhsdjvsdjvnsdjvnsvjd", type: .Sent),
            Message("eusifdscmadijcaiohduahdaiodjaodoajdaodhadhaod", type: .Received),
            Message("sdkfjsodjfosdufsdjfsdjofjadjfoisjfosdjfos", type: .Sent),
            Message("dfjosdjfoisjdfihdsufhsuidfhsudhfjsdnfjenjsfbwiur", type: .Sent),
            Message("snfdishfusdhfjfojwoejfmdkcmjsdcusdcdsiuch", type: .Received),
            Message("sjfsfhuisdhfjsdcusytqwtetqetqywuqeu9rqeurioejr", type: .Received),
            Message("3u4u98urt2894cry2hfkichrugnkhqbgfalfuhau hfuhu", type: .Sent),
            Message("wa3ucqotyvsgncutwytru8qhxufhomakuciyfncuqyfqningq ty", type: .Received),
        ]),
    ]
}

