//
//  ViewController.swift
//  EdgeKit
//
//  Created by nazmiyavuz on 12/05/2024.
//  Copyright (c) 2024 nazmiyavuz. All rights reserved.
//

import UIKit
import EdgeKit

class ViewController: UIViewController {

    private let firstView: UIView = {
        $0.backgroundColor = .systemPurple
        $0.layer.cornerRadius = 5
        return $0
    }(UIView())
    
    private let secondView: UIView = {
        $0.backgroundColor = .systemOrange
        $0.layer.cornerRadius = 5
        return $0
    }(UIView())

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(firstView)
        firstView.top(to: .parentView(inSafeArea: true), padding: 16)
        firstView.left(to: .parentView(inSafeArea: true), padding: 16)
        firstView.setSize(width: 200, height: 200)
        
        view.addSubview(secondView)
        secondView.anchor(leftAnchor: .leftEdge(of: firstView),
                          topAnchor: .bottomEdge(of: firstView),
                          rightAnchor: .rightEdge(of: firstView),
                          topPadding: 20)
        secondView.setHeight(100)
        
    }

}

