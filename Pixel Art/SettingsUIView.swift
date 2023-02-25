//
//  SettingsUIView.swift
//  Pixel Art
//
//  Created by Alexandar Hristov on 23.02.23.
//

import SwiftUI

struct SettingsUIView: View {
    @State var currentUsername: String
    @State var currentPassword: String
    @State var newUsername: String = ""
    @State var newPassword: String = ""
    
    private func saveChanges() {
        if currentUsername.isEmpty && currentPassword.isEmpty {
            return
        }
        if currentUsername == newUsername || currentPassword == newPassword {
            return
        }
        
        // TODO: Validate the new username and password
        
        // Update the current username and password with the new values
        currentUsername = newUsername
        currentPassword = newPassword
        
        // TODO: Update the user's information in the Firebase database
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Username")) {
                        HStack() {
                            Text("Current username:")
                            TextField("Current Username",text: $currentUsername)
                        }
                        HStack() {
                            Text("New username:")
                            TextField("Enter new name", text: $newUsername)
                        }
                        
                    }
                    Section(header: Text("Password")) {
                        HStack() {
                            Text("Current password:")
                            Spacer()
                            SecureField("Enter new password", text: $currentPassword)
                        }
                        HStack() {
                            Text("New password:")
                            TextField("Enter new password", text: $newPassword)
                        }
                        HStack() {
                            Text("Repeat password:")
                            TextField("", text: $newPassword)
                        }
                    }
                    Section(header: Text("App theme")){
                        Toggle(isOn: .constant(false)) {
                            Text("Dark mode")
                        }
                    }
                }
                Button(action: {
                    saveChanges()
                }) {
                    Text("Save Changes")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("DarkPurple"))
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView(currentUsername: "Alex", currentPassword: "password")
    }
}
