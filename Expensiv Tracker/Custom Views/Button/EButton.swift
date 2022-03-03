//
//  EButton.swift
//  Expensiv Tracker
//
//  Created by Abdirizak Hassan on 3/1/22.
//

import UIKit

class EButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configbtn()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(backgroundColor: UIColor, title: String) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
    }
    
    convenience init(titleColor: UIColor, title: String) {
        self.init(frame: .zero)
        setTitleColor(titleColor, for: .normal)
        self.setTitle(title, for: .normal)
    }
    
    private func configbtn() {
        layer.cornerRadius = 10
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
