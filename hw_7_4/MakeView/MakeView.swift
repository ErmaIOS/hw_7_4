//
//  MakeView.swift
//  hw_7_4
//
//  Created by Erma on 5/2/24.
//

import UIKit

class MakeView{
    
    static let shared = MakeView()
    
    func makerLabel(text:String = "",
                    textColor: UIColor = .white,
                    textSize:CGFloat = 20,
                    textWeight:UIFont.Weight = .regular,
                    textNumberOfLines: Int = 0
                    ) -> UILabel {
        let view = UILabel()
        view.text = text
        view.textColor = textColor
        view.font = .systemFont(ofSize: textSize,weight: textWeight)
        view.numberOfLines = textNumberOfLines
        return view
    }
    
    

    
    func makerTF(tfPlaceholder: String = "",
                 tfTextSize: CGFloat = 20,
                 tfBackgroundColor: UIColor = .white,
                 tfBorderColor: CGColor = UIColor.red.cgColor,
                 tfCornerRadius: CGFloat = 12,
                 tfLeftViewMode: UITextField.ViewMode = .always,
                 tfIsSecureTextEntry: Bool  = false,
                 tfTextColor: UIColor = .blue,
                 tfTextSelf: Any?,
                 tfTextSelector: Selector? = nil,
                 tfTextControl: UIControl.Event = .editingChanged
    ) -> UITextField{
        let view = UITextField()
        view.placeholder = tfPlaceholder
        view.layer.borderColor = tfBorderColor
        view.layer.cornerRadius = tfCornerRadius
        view.backgroundColor = tfBackgroundColor
        view.font = .systemFont(ofSize: tfTextSize)
        view.isSecureTextEntry = tfIsSecureTextEntry
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 5))
        view.leftView = leftView
        view.leftViewMode = tfLeftViewMode
        if let selector = tfTextSelector {
                view.addTarget(tfTextSelf, action: selector, for: tfTextControl)
            }
            
        return view
    }
    
    func makerImage(imageName: String = "",
                    imageContentMode: UIView.ContentMode = .scaleAspectFill,
                    imageBackgroundColor: UIColor = .white,
                    imageTintColor: UIColor = .white
                    )-> UIImageView{
        let view = UIImageView()
        view.image = UIImage(systemName: imageName)
        view.contentMode = imageContentMode
        view.backgroundColor = imageBackgroundColor
        view.tintColor = imageTintColor
        return view
    }
    
    func makerButton(buttonSetTitle: String = "",
                     buttonSetTitleFor: UIControl.State = .normal,
                     buttonSetTitleColor: UIColor = .black,
                     buttonTitleSize : CGFloat = 20,
                     buttonTintColor: UIColor? = .white,
                     buttonContentMode: UIView.ContentMode = .scaleAspectFit,
                     buttonCornerRadius: CGFloat = 12,
                     buttonBackgroundColor: UIColor = .black,
                     buttonTitleWeight: UIFont.Weight = .regular,
                     buttonSelf: Any?,
                     buttonSelector: Selector,
                     buttonControl: UIControl.Event = .touchUpInside
                     )-> UIButton{
        let view = UIButton(type: .system)
        view.setTitle(buttonSetTitle, for: buttonSetTitleFor)
        view.setTitleColor(buttonSetTitleColor, for: buttonSetTitleFor)
        view.titleLabel?.font = UIFont.systemFont(ofSize: buttonTitleSize,weight: buttonTitleWeight)
        view.tintColor = buttonTintColor
        view.contentMode = buttonContentMode
        view.layer.cornerRadius = buttonCornerRadius
        view.backgroundColor = buttonBackgroundColor
        view.addTarget(buttonSelf, action: buttonSelector, for: buttonControl)
        return view
       
    }
    
    func makerStackView(stackAxis: NSLayoutConstraint.Axis = .vertical,
                        stackDistribution: UIStackView.Distribution = .fillEqually,
                        stackSpacing: CGFloat = 10,
                        stackBackgroundColor: UIColor = .white
    )-> UIStackView{
        let view = UIStackView()
        view.axis = stackAxis
        view.distribution = stackDistribution
        view.spacing = stackSpacing
        view.backgroundColor = stackBackgroundColor
        return view
    }
}

