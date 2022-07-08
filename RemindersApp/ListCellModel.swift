//
//  ListCellModel.swift
//  RemindersApp
//
//  Created by Michał Michalik on 07/07/2022.
//

import Foundation
import SwiftUI

struct Reminder: Identifiable, Decodable, Hashable{
  
    let id: Int
    let icon: String
    let title: String
    let number: String
    
}
