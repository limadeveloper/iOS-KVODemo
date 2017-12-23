//
//  ViewModel.swift
//  iOSKVODemo
//
//  Created by John Lima on 21/12/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import Foundation
import UIKit

class ViewModel {
    
    var persons = Person.getPersons()
    
    func addObervables(toTarget: AnyObject, imageView: UIImageView) {
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: Constants.Observable.Key.keyChangeBackgroundViewController), object: nil, queue: .main) { (notification) in
            NotificationCenter.default.removeObserver(toTarget, name: NSNotification.Name(rawValue: Constants.Observable.Key.keyChangeBackgroundViewController), object: nil)
            self.changeBackgroundImage(fromTarget: toTarget, imageView: imageView)
        }
    }
    
    func changeBackgroundImage(fromTarget: AnyObject, imageView: UIImageView) {
        let index = Int(arc4random_uniform(UInt32(persons.count)))
        imageView.image = persons[index].image
    }
    
    func setContainer(view: UIView, target: AnyObject) {
        let actionView = ActionView(frame: view.bounds)
        actionView.delegate = self
        actionView.autoresizingMask = [.flexibleWidth]
        view.addSubview(actionView)
    }
}

extension ViewModel: ActionViewDelegate {
    func actionViewDidClickOnChangeBackground(imageView: UIImageView) {
        changeBackgroundImage(fromTarget: self, imageView: imageView)
    }
}
