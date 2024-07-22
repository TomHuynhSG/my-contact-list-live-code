//
//  ContactCard.swift
//  My Contact List
//
//  Created by Tom Huynh on 22/7/24.
//

import SwiftUI

struct ContactCard: View {
    var body: some View {
        ZStack{
            Color("rmit-blue")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                CircleView()
                Text("Tom Huynh")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                Image("rmit-logo-white")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 75)
                Group{
                    InfoView(text: "tomhuynh@rmit.edu.vn", imageName:
                    "envelope.fill")
                    InfoView(text: "0123456789", imageName:
                    "phone.fill")
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    ContactCard()
}
