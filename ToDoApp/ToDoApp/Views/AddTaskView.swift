//
//  AddTaskView.swift
//  ToDoApp
//
//  Created by Nikita on 23.04.2023.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your task", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title !=  "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.green)
                    .cornerRadius(30)
            }
            Spacer()
            
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color.brown)
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
