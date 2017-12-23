//
//  ActionView.swift
//  iOSKVODemo
//
//  Created by John Lima on 21/12/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import UIKit

protocol ActionViewDelegate {
    func actionViewDidClickOnChangeBackground(imageView: UIImageView)
}

class ActionView: UIView {

    // MARK: - Properties
    private var imageView = UIImageView()
    var delegate: ActionViewDelegate?
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        guard let view = Bundle.main.loadNibNamed(Constants.View.Key.actionView, owner: nil, options: nil)?.first as? UIView else { return }
        view.frame = frame
        
        self.addSubview(view)
        
        imageView = view.viewWithTag(1) as? UIImageView ?? UIImageView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Actions
    @IBAction private func changeBackgroundControllerUsingObervables(sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: Constants.Observable.Key.keyChangeBackgroundViewController), object: nil)
        delegate?.actionViewDidClickOnChangeBackground(imageView: imageView)
    }
}
