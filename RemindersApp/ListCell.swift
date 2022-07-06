//
//  ListCell.swift
//  RemindersApp
//
//  Created by Michał Michalik on 06/07/2022.
//

import SwiftUI

struct ListCell: View {
    
    var icon: String
    var iconColor: Color
    var title: String
    var number: String
    
    var body: some View {
        NavigationLink{
            //
        }label: {
            HStack{
                Image(systemName: icon)
                    .foregroundColor(iconColor)
                    .font(.system(size: 25))
                Text(title)
                    .foregroundColor(.black)
                Spacer()
                Text(number)
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
                    
            }
            .padding(.horizontal)
        }
        
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(icon: "bookmark.circle.fill", iconColor: .orange, title: "Reminders", number: "3")
    }
}
