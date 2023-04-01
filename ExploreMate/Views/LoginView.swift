//
//  LoginView.swift
//  ExploreMate
//
//  Created by Alptekin's Macbook on 18.03.2023.
//

import SwiftUI

struct LoginView: View {
    // MARK: - Propertiers
    @State var email = ""
    @State var password = ""
    @State private var buttonClicked : Bool = false
    var body: some View {
        // MARK: - View
        NavigationView {
            GeometryReader { geometry in
                VStack() {
                    Image("iosapptemplate")
                        .resizable()
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 10)
                        .padding(.bottom, 50)
                    TextField("Email", text: self.$email)
                        .padding(EdgeInsets(top: 10, leading: 100, bottom: 10, trailing: 10))
                        .cornerRadius(20.0)
                    SecureField("Password", text: self.$password)
                        .padding(EdgeInsets(top: 10, leading: 100, bottom: 10, trailing: 10))
                        .cornerRadius(20.0)
                    Button {
                        MainView()
                    } label: {
                        Text("Sign in")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(15.0)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                            .edgesIgnoringSafeArea(.all))
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
