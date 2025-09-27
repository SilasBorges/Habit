//
//  Gender.swift
//  Habit
//
//  Created by Silas Borges on 27/09/25.
//

import Foundation

enum Gender: String, CaseIterable, Identifiable {
    case male = "Masculino"
    case female = "Feminino"
    
    var id: String {
        self.rawValue
    }
}
