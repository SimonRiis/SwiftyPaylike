//
//  ViewController.swift
//  Example
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import UIKit
import SwiftyPaylike

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let handler = PaylikeHandler(paylikePublicKey: "")
        
        let card = Card(cardNumber: "4100000000000", cardExpiryMonth: 05, cardExpiryYear: 22, cardCode: 123)
        
        let cardPayment = CardPayment(currency: "DKK", amount: 1000, card: card)
        
        handler.pay(cardPayment: cardPayment) { (data) in
            print(data)
        }
        
      
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

