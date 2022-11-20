//
//  LogInView.swift
//  SwiftUIBaseDemo
//
//  Created by Александр Шелихов on 20.11.2022.
//

import SwiftUI

struct LogInView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        VStack() {
            Spacer()
            logo
            Spacer()
            textFields
            logInButton
                .padding(EdgeInsets(top: elementsHeight / 3, leading: 0, bottom: 0, trailing: 0))
            Spacer()
        }
        .padding()
    }
    
    private var logo: some View {
        Image("logo")
            .resizable()
            .frame(width: logoSize, height: logoSize)
    }
    
    private var textFields: some View {
        VStack(spacing: 0) {
            TextField("Email or phone", text: $login)
                .padding(.horizontal)
                .frame(height: elementsHeight)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
            TextField("Password", text: $password)
                .padding(.horizontal)
                .frame(height: elementsHeight)
        }
        .background {
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(.gray)
                .background(RoundedRectangle(cornerRadius: cornerRadius).fill(.gray.opacity(0.12)))
        }
    }
    
    private var logInButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius).foregroundColor(.blue)
                .frame(height: elementsHeight)
            Text("Log in")
                .foregroundColor(.white)
        }
        .onTapGesture {
            print("Log in button pressed")
        }
    }
    
    private var cornerRadius: CGFloat = 10
    private var elementsHeight: CGFloat = 60
    private var logoSize: CGFloat = 100
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
