//
//  ChatViewModel.swift
//  iOS-chat-app
//
//  Created by Riya Mittal on 8/11/22.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var chats = Chat.sampleChats
    
    func getSortedFilteredChats(query: String) -> [Chat] {
        let sortedChats = chats.sorted {
            guard let date1 = $0.messages.last?.date else { return false }
            guard let date2 = $1.messages.last?.date else { return false }
            return date1 > date2
        }
        
        if query == "" {
            return sortedChats
        }
        return sortedChats.filter { $0.person.firstName.lowercased().starts(with: query.lowercased()) || $0.person.lastName.lowercased().starts(with: query.lowercased()) }
    }
    
    func markAsUnread(_ newValue: Bool, chat: Chat) {
        if let index = chats.firstIndex(where: { $0.id == chat.id }) {
            chats[index].hasUnreadMessage = newValue
        }
    }
}
