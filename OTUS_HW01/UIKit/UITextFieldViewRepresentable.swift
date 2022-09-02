//
//  UITextFieldViewRepresentable.swift
//  OTUS_HW01
//
//  Created by Александр Касьянов on 02.09.2022.
//

import UIKit
import SwiftUI

struct UITextFieldViewRepresentable: UIViewRepresentable {
        
    @Binding var text: String
    
    func makeUIView(context: Context) -> some UIView {
        let textField = getTextField()
        textField.delegate = context.coordinator
        return textField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    private func getTextField() -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.placeholder = "You may type something here"
        return textField
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
}
