//
//  Card.swift
//  SwiftyPaylike
//
//  Created by Simon Riis Olesen on 11/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import Foundation
public class Card:Encoding{
    
    var cardNumber:String
    var cardExpiryMonth:Int
    var cardExpiryYear:Int
    var cardCode:Int
    
    public init(cardNumber:String, cardExpiryMonth:Int, cardExpiryYear:Int, cardCode:Int) {
        self.cardNumber = cardNumber
        self.cardExpiryMonth = cardExpiryMonth
        self.cardExpiryYear = cardExpiryYear
        self.cardCode = cardCode
    }
    
    public func encode() -> Data {
        var data = Data()
        if let cardNumber = ("&card[number]="+cardNumber).data(using: String.Encoding.utf8){
            data.append(cardNumber)
        }
        if let cardExpiryMonth = ("&card[expiry][month]="+String(cardExpiryMonth)).data(using: String.Encoding.utf8){
            data.append(cardExpiryMonth)
        }
        if let cardExpiryYear = ("&card[expiry][year]="+String(cardExpiryYear)).data(using: String.Encoding.utf8){
            data.append(cardExpiryYear)
        }
        if let cardCode = ("&card[code]="+String(cardCode)).data(using: String.Encoding.utf8){
            data.append(cardCode)
        }
        
        return data
    }
    
    
}
