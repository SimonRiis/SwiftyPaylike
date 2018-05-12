//
//  Test.swift
//  SwiftyPaylike
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 SwiftyPaylike. All rights reserved.
//

import Foundation
import URLSessionWrapper

class TestClass{
    
    
    public func testMethod(result: @escaping (_ successData: [String: Any]?) -> Void){
        
      
        
        if let url = URL(string: "https://exchangeratesapi.io/api/latest"){
            
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            let handler = URLSessionHandler(session: URLSession.shared)
            
            handler.call(request: request, result: { (response) in
                
                if let response = response{
                    if let data = response["responseData"] as? [String: Any]{
                        result(data)
                    }
                }
                
            })
            
            
        }
        
        
        
    }
    
}
