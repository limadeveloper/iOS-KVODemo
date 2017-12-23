//
//  Person.swift
//  iOSKVODemo
//
//  Created by John Lima on 21/12/17.
//  Copyright © 2017 limadeveloper. All rights reserved.
//

import Foundation
import UIKit

struct Person {
    let image: UIImage
}

extension Person {
    static func getPersons() -> [Person] {
        return [
            Person(image: Constants.Image.img1),
            Person(image: Constants.Image.img2),
            Person(image: Constants.Image.img3),
            Person(image: Constants.Image.img4),
            Person(image: Constants.Image.img5),
            Person(image: Constants.Image.img6),
            Person(image: Constants.Image.img7),
            Person(image: Constants.Image.img8),
            Person(image: Constants.Image.img9),
            Person(image: Constants.Image.img10),
            Person(image: Constants.Image.img11),
            Person(image: Constants.Image.img12),
            Person(image: Constants.Image.img13),
            Person(image: Constants.Image.img14)
        ]
    }
}
