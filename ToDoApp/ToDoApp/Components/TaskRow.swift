//
//  TaskRow.swift
//  ToDoApp
//
//  Created by Nikita on 23.04.2023.
//

import SwiftUI
import RealmSwift

struct TaskRow: View {
    @EnvironmentObject var realmManager: RealmManager
    var forDelete: ObjectId?
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle" )
            
            Text(task)
            
            Spacer()
            
            Image(systemName: "trash")
                
                .foregroundColor(.red)
                .onTapGesture {
                    realmManager.deleteTask(id: forDelete!)
                }
            
        }
        
    }
    
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do homework", completed: true)
            .environmentObject(RealmManager())
    }
}
