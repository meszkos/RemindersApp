//
//  ListCell.swift
//  RemindersApp
//
//  Created by Michał Michalik on 06/07/2022.
//

import SwiftUI

struct ListCell: View {
    
    var reminder: Reminder
    
    var body: some View {
        NavigationLink{
            //
        }label: {
            HStack{
                Image(systemName: reminder.icon)
                    .foregroundColor(getColor())
                    .font(.system(size: 25))
                Text(reminder.title)
                    .foregroundColor(.black)
                Spacer()
                Text(reminder.number)
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
            }
            //.padding(.horizontal)
        }
        
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(reminder: Reminder(id: 123, icon: "person",title: "Home", number: "10"))
    }
}

func getColor() -> Color{
    let colors = [Color.green, Color.blue, Color.red, Color.purple, Color.orange, Color.yellow]
    
    return colors.randomElement()!
}
