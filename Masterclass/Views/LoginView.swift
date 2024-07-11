//
//  LoginView.swift
//  Masterclass
//
//  Created by Danilo Martins on 11/07/24.
//



import SwiftUI

struct LoginView: View {
    
  //  @State var  email = ""
   // @State var  password = ""
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: Color.pink)
                
                
                
                Form{
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                
                    TLButton(title: "Log In",
                             background: Color.blue){
                        viewModel.login()  
                        
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination:RegisterView())
                    
                    
                }
                .padding(.bottom,50)
                Spacer()
            }
         
        }

        
        

  
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
