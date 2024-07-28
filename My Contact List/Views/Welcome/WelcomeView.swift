//
//  WelcomeView.swift
//  My Contact List
//
//  Created by Tom Huynh on 28/7/24.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActivate = true
    
    var body: some View {
        ZStack {
            
            if isWelcomeActivate {
                GreatingView(activate: $isWelcomeActivate)
            } else {
                ContactList()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
