//
//  CustomTextFields.swift
//  Expensiv Tracker
//
//  Created by Abdirizak Hassan on 3/5/22.
//
// UI DESING

import UIKit

class CustomTextFields: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configpass()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init (textContentType: UITextContentType, isSecureTextEntry: Bool, placeholder: String?) {
        self.init(frame: .zero)
        self.textContentType = textContentType
        self.isSecureTextEntry = isSecureTextEntry
        self.placeholder        = placeholder
        
    }
    
    convenience init (isSecureTextEntry: Bool) {
        self.init(frame: .zero)
//        self.textContentType = textContentType
        self.isSecureTextEntry = isSecureTextEntry
        keyboardType = .numberPad
//        self.placeholder        = "•"
        textAlignment = .center
        font = UIFont.systemFont(ofSize: 22)
//        backgroundColor = .systemGray3
//        borderStyle = .roundedRect
    }
    
    convenience init (textContentType: UITextContentType, placeholder: String?) {
        self.init(frame: .zero)
        self.textContentType = textContentType
        self.placeholder        = placeholder
    }
    
    convenience init (placeholder: String?) {
        self.init(frame: .zero)
        self.placeholder        = placeholder
    }
    
    func configpass() {
        translatesAutoresizingMaskIntoConstraints = false
        
        textColor               = .label
        tintColor               = .label
        
        textAlignment           = .left
        font                    = UIFont.systemFont(ofSize: 17)
        minimumFontSize         = 17
        
        backgroundColor         = .clear
        autocorrectionType      = .no
        returnKeyType           = .go
//        clearButtonMode         = .whileEditing
    }

}
