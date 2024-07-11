//
//  LoginViewViewModel.swift
//  Masterclass
//
//  Created by Danilo Martins on 11/07/24.
//

import Foundation
import FirebaseAuth


class LoginViewViewModel: ObservableObject{
        @Published var email=""
        @Published var password=""
        @Published var errorMessage = ""
    
    
    init(){
        
    }
    
    func login(){
        guard validate() else{
            return
        }
        //Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    func validate() ->Bool{
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please fill in all fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        
        return true
 
    }
    
    
}
