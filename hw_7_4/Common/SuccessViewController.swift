//
//  SuccessViewController.swift
//  hw_7_4
//
//  Created by Erma on 5/2/24.
//

import UIKit
import SnapKit
class SuccessViewController: UIViewController {
    
    
    private lazy var successImage: UIImageView = MakeView.shared.makerImage(imageName: "checkmark.circle.fill",imageBackgroundColor: .green, imageTintColor: .white)
    
    private lazy var successLabel: UILabel = MakeView.shared.makerLabel(text: "Translation completed",textColor: .black,textSize: 20)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        view.addSubview(successImage)
        view.addSubview(successLabel)
        
        successImage.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.width.equalTo(100)
        }
        
        successLabel.snp.makeConstraints { make in
            make.top.equalTo(successImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
    

    
}
