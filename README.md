# KVO Example
Example of KVO (Key Value Observable)
* Swift 4
* Xcode 9.2
 
## 01
 ```
 NotificationCenter.default.post(name: NSNotification.Name(rawValue: Constants.Observable.Key.keyChangeBackgroundViewController), object: nil)
 ```

## 02
 ```
func addObervables(toTarget: AnyObject, imageView: UIImageView) {
    NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: Constants.Observable.Key.keyChangeBackgroundViewController), object: nil, queue: .main) { (notification) in 
        NotificationCenter.default.removeObserver(toTarget, name: NSNotification.Name(rawValue: Constants.Observable.Key.keyChangeBackgroundViewController), object: nil)
        self.changeBackgroundImage(fromTarget: toTarget, imageView: imageView)
    }
}
 ```

## Demo
 
 <p align="center">
<img src="https://github.com/limadeveloper/iOS-KVODemo/blob/master/Docs/Images/01.png" width="375">
<img src="https://github.com/limadeveloper/iOS-KVODemo/blob/master/Docs/Images/02.png" width="375">
</p>
<br>

<p align="center">
<img src="https://github.com/limadeveloper/iOS-KVODemo/blob/master/Docs/Images/03.png" width="375">
<img src="https://github.com/limadeveloper/iOS-KVODemo/blob/master/Docs/Images/04.png" width="375">
</p>
<br>