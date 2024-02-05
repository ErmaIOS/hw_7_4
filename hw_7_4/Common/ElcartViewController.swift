//
//  ElcartViewController.swift
//  hw_7_4
//
//  Created by Erma on 5/2/24.
//

import UIKit
import SnapKit

class ElcartViewController: UIViewController, TransferProtocol {
    
    
    
    
    var senderCardNumber = "5908431278549613"
    var senderBalance = 3000.0
    
    private lazy var labelStack: UIStackView = MakeView.shared.makerStackView(stackAxis: .vertical,stackDistribution: .fillEqually, stackSpacing: 10,stackBackgroundColor: .white)
    
    private lazy var senderCardNumberLabel: UILabel = MakeView.shared.makerLabel(text: "4567132409674523",textColor: .black,textSize: 18)
    
    private lazy var senderBalanceLabel: UILabel = MakeView.shared.makerLabel(text: "5000",textColor: .black,textSize: 18)

    
    private lazy var tfStack: UIStackView = MakeView.shared.makerStackView(stackAxis: .vertical,stackDistribution: .fillEqually, stackSpacing: 10,stackBackgroundColor: .white)
    
    private lazy var repicientCard: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter repicient card",tfTextSize: 18,tfBackgroundColor: .white, tfCornerRadius: 16,tfTextColor: .black,tfTextSelf: nil, tfTextSelector: nil)
    
    private lazy var transferAmount: UITextField = MakeView.shared.makerTF(tfPlaceholder: "Enter transfer amount",tfTextSize: 18,tfBackgroundColor: .white, tfCornerRadius: 16,tfTextColor: .black,tfTextSelf: nil, tfTextSelector: nil)

    private lazy var transferBtn: UIButton = MakeView.shared.makerButton(buttonSetTitle: "Transfer Amount",buttonTitleSize: 18,buttonCornerRadius: 16,buttonBackgroundColor: .cyan,buttonSelf: self, buttonSelector: #selector(transferBtnTapped))

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        senderCardNumberLabel.text = "Sender Card: \(senderCardNumber)"
        senderBalanceLabel.text = "Balance: $\(senderBalance)"
        view.addSubview(labelStack)
        labelStack.addArrangedSubview(senderCardNumberLabel)
        labelStack.addArrangedSubview(senderBalanceLabel)
        
        view.addSubview(tfStack)
        tfStack.addArrangedSubview(repicientCard)
        tfStack.addArrangedSubview(transferAmount)
        
        view.addSubview(transferBtn)
        
        labelStack.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
        
        tfStack.snp.makeConstraints { make in
            make.top.equalTo(labelStack.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(100)
        }
        transferBtn.snp.makeConstraints { make in
            make.top.equalTo(tfStack.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
    }
    
    @objc func transferBtnTapped(_ sender: UIButton){
        guard let amount = transferAmount.text else {return}
        
        if  validateRecipientCard(tfRecipientCard: repicientCard) &&  validateBalance(amount: Double(amount) ?? 0, tfAmount: transferAmount, balance: senderBalance){
            let vc = SuccessViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
       
       
        
        
    }

    

}

