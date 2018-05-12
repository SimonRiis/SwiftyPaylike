//
//  CardPayment.swift
//  SwiftyPaylike
//
//  Created by Simon Riis Olesen on 11/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import Foundation
public class CardPayment:Encoding{
    
    var currency:String
    var amount: Int
    var card:Card
   
    
    public init(currency:String, amount: Int, card:Card) {
        self.currency = currency
        self.amount = amount
        self.card = card
    }

    public func encode() -> Data {

        var data = Data()
        if let currency = ("&currency="+currency).data(using: String.Encoding.utf8){
            data.append(currency)
        }
        if let amount = ("&amount="+String(amount)).data(using: String.Encoding.utf8){
            data.append(amount)
        }
        data.append(self.card.encode())
        
        return data
    }
    
}
