//
//  ViewController.swift
//  iOSKVODemo
//
//  Created by John Lima on 21/12/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet private var backgroundImageView: UIImageView!
    @IBOutlet private var containerView: UIView!
    
    let viewModel = ViewModel()
    
    // MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialize()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Actions
    private func initialize() {
        viewModel.addObervables(toTarget: self, imageView: backgroundImageView)
        viewModel.setContainer(view: containerView, target: self)
        viewModel.changeBackgroundImage(fromTarget: self, imageView: self.backgroundImageView)
    }
}

