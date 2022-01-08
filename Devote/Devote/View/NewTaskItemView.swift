//
//  NewTaskItemView.swift
//  Devote
//
//  Created by Minh Tiến Đặng on 08/01/2022.
//

import SwiftUI

struct NewTaskItemView: View {
    //MARK: - PROPERTIES
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    private var isButtonDisable: Bool {
        task.isEmpty
    }
    @Environment(\.managedObjectContext) private var viewContext
    @State private var task: String = ""
    @Binding var isShowing: Bool
    
    //MARK: - FUNCTIONS
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.id = UUID()
            newItem.task = task
            newItem.completion = false

            do {
                try viewContext.save()
            } catch {
             
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
            task = ""
            hideKeyboard()
            isShowing = false
        }
    }
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                TextField("New Task", text: $task)
                    .foregroundColor(.pink)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .padding()
                    .background(
                        isDarkMode ? Color(uiColor: .tertiarySystemBackground) :
                        Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                
                Button {
                    addItem()
                } label: {
                    Spacer()
                    Text("SAVE")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                }
                .disabled(isButtonDisable)
                .padding()
                .font(.headline)
                .foregroundColor(.white)
                .background(isButtonDisable ? .blue:.pink)
                .cornerRadius(10)
            }//: VSTACK
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(
                isDarkMode ? Color(uiColor: .secondarySystemBackground) :
                Color.white)
            .cornerRadius(16)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.65), radius: 24)
            .frame(maxWidth: 640)
        }//: VSTACK
        .padding()
    }
}

//MARK: - PREVIEW
struct NewTaskItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskItemView(isShowing: .constant(true))
            .background(Color.gray.edgesIgnoringSafeArea(.all))
    }
}
