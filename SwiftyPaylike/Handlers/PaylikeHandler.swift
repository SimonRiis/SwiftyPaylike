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
        
        if let url = URL(string: "https://gateway.paylike.io/transactions"){
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
          
            var data = Data()
            if let publicKey = ("key="+paylikePublicKey).data(using: String.Encoding.utf8){
                data.append(publicKey)
            }
            data.append(cardPayment.encode())
       
            request.httpBody = data
            URLSessionHandler(session: URLSession.shared).call(request: request) { (data) in
                
                result(data)
                
            }
        }
        
        
    }
    
    
    
    
}
