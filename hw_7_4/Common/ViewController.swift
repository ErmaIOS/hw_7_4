//
//  ViewController.swift
//  hw_7_4
//
//  Created by Erma on 5/2/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var verticalStack: UIStackView = MakeView.shared.makerStackView(stackAxis: .vertical,stackDistribution: .fillEqually,stackSpacing: 10,stackBackgroundColor: .white)

    private lazy var visaBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Visa to visa",buttonSetTitleColor: .black,buttonTitleSize: 20,buttonCornerRadius: 16,buttonBackgroundColor: .cyan, buttonSelf: self, buttonSelector: #selector(visaBtnTapped(sender: )))
    
    private lazy var elcartBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Elcart to elcart",buttonSetTitleColor: .black,buttonTitleSize: 20,buttonCornerRadius: 16,buttonBackgroundColor: .cyan, buttonSelf: self, buttonSelector: #selector(elcartBtnTapped))
    
    private lazy var swiftBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Swift",buttonSetTitleColor: .black,buttonTitleSize: 20,buttonCornerRadius: 16,buttonBackgroundColor: .cyan, buttonSelf: self, buttonSelector: #selector(swiftBtnTapped))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    private func setupUI(){
        view.backgroundColor = .white
        view.addSubview(verticalStack)
        verticalStack.addArrangedSubview(visaBtn)
        verticalStack.addArrangedSubview(elcartBtn)
        verticalStack.addArrangedSubview(swiftBtn)
        
        
        verticalStack.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(150)
        }
    }

    
    
    @objc func visaBtnTapped(sender: UIButton) {
        let vc = VisaViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func elcartBtnTapped(_ sender: UIButton) {
        let vc = ElcartViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func swiftBtnTapped(_ sender: UIButton) {
        let vc = SwiftViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

