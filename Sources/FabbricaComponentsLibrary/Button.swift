//
//  File.swift
//  
//
//  Created by latush on 20.02.2024.
//

import UIKit

public class Button: UIButton {
    
    public enum ButtonStyle {
        case productPriceButton
    }
    
   public init(style: ButtonStyle) {
        super.init(frame: .zero)
        
        switch style {
        case .productPriceButton: createProductPriceButton()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   public  func createProductPriceButton() {
            setTitle("от 469 руб", for: .normal)
            backgroundColor = .orange.withAlphaComponent(0.1)
            layer.cornerRadius = 16
            setTitleColor(.systemOrange, for: .normal)
            heightAnchor.constraint(equalToConstant: 30).isActive = true
            widthAnchor.constraint(equalToConstant: 100).isActive = true
            contentEdgeInsets = UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12)
    }
    
}
