//
//  TransferProtocol.swift
//  hw_7_4
//
//  Created by Erma on 5/2/24.
//

import UIKit

protocol TransferProtocol {
    func validateRecipientCard(tfRecipientCard: UITextField) -> Bool
    func validateBalance(amount: Double, tfAmount: UITextField, balance: Double) -> Bool
}

extension TransferProtocol {
    func validateRecipientCard(tfRecipientCard: UITextField) -> Bool {
        if let cardNumber = tfRecipientCard.text, cardNumber.count == 16, cardNumber.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil {
          
            return true
        } else {
            tfRecipientCard.attributedPlaceholder = NSAttributedString(
                string: "Card number must be 16 digits",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
            )
            tfRecipientCard.layer.borderWidth = 2
            return false
        }
    }

    func validateBalance(amount: Double, tfAmount: UITextField, balance: Double) -> Bool {
        if amount >= 20 && amount <= balance {
            return true
        } else {
            tfAmount.attributedPlaceholder = NSAttributedString(
                string: "Amount should be between 20 and \(balance)",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.red]
            )
            tfAmount.layer.borderWidth = 2
            return false
        }
    }
}



