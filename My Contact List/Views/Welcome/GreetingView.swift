//
//  GreatingView.swift
//  My Contact List
//
//  Created by Tom Huynh on 28/7/24.
//

import SwiftUI

struct GreetingView: View {
    @Binding var activate : Bool
    
    var body: some View {
        ZStack{
            Color("rmit-blue")
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                Text("Welcome")
                    .font(.system(size: 60, weight: .heavy, design: .rounded))
                    .foregroundStyle(.white)
                Text("""
The Contact List is long,
The Circle is small!
""")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                
                Spacer()
                
                CircleRMITView()
                
                Spacer()
                
                Button {
                    activate = false
                } label: {
                    Capsule()
                        .fill(.white.opacity(0.4))
                        .padding(8)
                        .frame(height:80)
                        .overlay(
                            Text("Get Started")
                                .font(.title2)
                                .foregroundColor(.white)
                        )
                    
                }
                
            }
        }
    }
}

#Preview {
    GreetingView(activate: Binding.constant(true))
}

struct CircleRMITView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(.white.opacity(0.4), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(.white.opacity(0.2), lineWidth: 90)
                .frame(width: 260, height: 260, alignment: .center)
            
            Image("rmit-logo-white")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
        }
    }
}
