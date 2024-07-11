//
//  RegisterView.swift
//  Masterclass
//
//  Created by Danilo Martins on 11/07/24.
//

import SwiftUI

struct RegisterView: View {
    
  @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start organing todos", angle: 15, background: Color.orange)
            
            
                 Form{
                     TextField("Full Name", text: $viewModel.name)
                         .textFieldStyle(DefaultTextFieldStyle())
                     TextField("Email Address", text: $viewModel.email)
                         .textFieldStyle(DefaultTextFieldStyle())
                     SecureField("Password", text: $viewModel.password)
                         .textFieldStyle(DefaultTextFieldStyle())
                     
                     TLButton(
                        title: "Create Account",
                        background: .green
                     ){
                        
                     }.padding()
                         
                     
                 }
                 .offset(y: -50)
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
        
    }
}
