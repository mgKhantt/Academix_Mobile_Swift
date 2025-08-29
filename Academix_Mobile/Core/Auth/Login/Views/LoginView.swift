//
//  LoginView.swift
//  Academix_Mobile
//
//  Created by Khant Phone Naing  on 29/08/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    
    var body: some View {
        ZStack {
            Color.theme.luxuryRed
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Top Wave Section
                ZStack {
                    // Background Image masked by wave
                    Image("uni")
                        .resizable()
                        .scaledToFill()
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .overlay(content: {
                            VStack {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 300)
                                    .padding(.top, UIScreen.main.bounds.height * 0.1)
                                Text("Academix")
                                    .font(.custom("Charter-Bold", size: 63))
                                    .fontWeight(.bold)
                                    .offset(y: -UIScreen.main.bounds.height / 10)
                                
                                VStack(spacing: 10) {
                                    Text("Enhance Your Learning Journey with Us")
                                    Text("Take Your Education to the Next Level")
                                }
                                .font(.custom("Charter-Bold", size: 15))
                                .font(.headline)
                                .offset(y: -UIScreen.main.bounds.height / 10)
                                    
                            }
                            .foregroundStyle(.white)
                        })
                        .mask(
                            CurveWaveView()
                                .frame(height: UIScreen.main.bounds.height * 0.5)
                        )
                    
                    // Wave stroke for accent
                    CurveWaveView()
                        .stroke(Color.theme.creamColor, lineWidth: 4)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        .offset(y: -2)
                }
                .frame(width: UIScreen.main.bounds.width * 1.1)
                .frame(height: UIScreen.main.bounds.height * 0.35)
                .ignoresSafeArea(edges: .top)
                
                // Decorative circle
                CircleView()
                    .frame(width: 100, height: 100)
                    .offset(
                        x: UIScreen.main.bounds.width / 3.75,
                        y: UIScreen.main.bounds.height * 0.0009
                    )
                    .shadow(radius: 5)
                
                Spacer()
            }
            
            // Login Form Section
            VStack(alignment: .leading) {
                // Title with custom underline
                VStack(alignment: .leading, spacing: 5) {
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Rectangle()
                        .fill(Color.theme.creamColor)
                        .frame(width: 100, height: 2.5)
                        .offset(y: -5)
                }
                
                // Email field
                Text("Email")
                    .foregroundStyle(.white)
                TextField(
                    "",
                    text: $email,
                    prompt: Text("Please enter your email.")
                        .foregroundColor(Color.white.opacity(0.5))
                )
                .padding()
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
                .foregroundColor(.white)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .offset(y: -10)

                
                // Password field with eye button
                Text("Password")
                    .foregroundStyle(.white)
                ZStack(alignment: .trailing) {
                    Group {
                        if showPassword {
                            TextField(
                                "",
                                text: $password,
                                prompt: Text("Please enter your password.")
                                    .foregroundColor(Color.white.opacity(0.5))
                            )
                        } else {
                            SecureField(
                                "",
                                text: $password,
                                prompt: Text("Please enter your password.")
                                    .foregroundColor(Color.white.opacity(0.5))
                            )
                        }
                    }
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.white) // typed text color

                    Button(action: {
                        showPassword.toggle()
                    }) {
                        Image(systemName: showPassword ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.white)
                            .padding(.trailing, 10)
                    }
                }
                .offset(y: -10)

                
                // Sign in button
                Text("LogIn")
                    .frame(width: 200)
                    .padding()
                    .background(Color.theme.creamColor)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(#colorLiteral(red: 67/255, green: 116/255, blue: 163/255, alpha: 1)), lineWidth: 2)
                    )
                    .frame(maxWidth: .infinity, alignment: .center)
                    .onTapGesture {
                        print("Login")
                    }
                    .padding(.top)
                
                HStack() {
                    Spacer()
                    Text("Don't have an account?")
                        .foregroundStyle(.white)
                    Text("Register")
                        .foregroundStyle(Color.theme.creamColor)
                        .underline()
                        .onTapGesture {
                            print("Go to Register")
                        }
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.horizontal, 50)
            .padding(.top, UIScreen.main.bounds.height * 0.43)
        }
    }
}

#Preview {
    LoginView()
}
