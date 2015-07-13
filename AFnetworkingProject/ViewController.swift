//
//  ViewController.swift
//  AFnetworkingProject
//
//  Created by Mohsin on 13/07/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let reqManager = AFHTTPRequestOperationManager()
        
        reqManager.GET("www.google.com", parameters: nil, success: { (operators, response) -> Void in
            println("success: ")
            println(operators)
            println(response)
            
        }) { (operators, error) -> Void in
            println("failure: ")
            println(operators)
            println(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

