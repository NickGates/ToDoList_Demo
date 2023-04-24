//
//  SmallAddButton.swift
//  ToDoApp
//
//  Created by Nikita on 23.04.2023.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 50)
                .foregroundColor(.green)
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                
        }
        .frame(height: 50)
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
