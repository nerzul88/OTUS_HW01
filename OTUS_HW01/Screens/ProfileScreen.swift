//
//  ProfileScreen.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State private var textFromTextView: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile screen")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                    .padding()
                Spacer()
                Text("This is profile screen")
                Spacer()
                UITextFieldViewRepresentable(text: $textFromTextView)
                    .frame(width: .infinity, height: 55)
                    .border(.black, width: 1)
                    .padding()
                Spacer()
                Text(textFromTextView)
                Spacer()
                Spacer()
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
