//
//  Payable.swift
//  SwiftyPaylike
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import Foundation
public protocol Payable {
    
    func pay(cardPayment:CardPayment,result: @escaping (_ successData: [String: Any]?) -> Void)
    
}
