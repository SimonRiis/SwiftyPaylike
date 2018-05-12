//
//  PaylikeHandler.swift
//  SwiftyPaylike
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import Foundation
import URLSessionWrapper
public class PaylikeHandler:Payable{
    
    var paylikePublicKey:String
    
    public init(paylikePublicKey:String) {
        self.paylikePublicKey = paylikePublicKey
    }
    
    public func pay(cardPayment: CardPayment, result: @escaping ([String : Any]?) -> Void) {
        
        if let url = URL(string: "https://gateway.paylike.io/cards"){
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            URLSessionHandler(session: URLSession.shared).call(request: request) { (data) in
                
                result(data)
                
            }
        }
        
        
    }
    
    
    
    
}
