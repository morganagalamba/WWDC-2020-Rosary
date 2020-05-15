import UIKit
import PlaygroundSupport

let secondViewController = SecondViewController(screenType: .mac)
PlaygroundPage.current.liveView = secondViewController.scaleToFit()


//let startView = SecondViewController()
//startView.preferredContentSize = CGSize(width: 1440, height: 900)
//PlaygroundPage.current.liveView = startView
