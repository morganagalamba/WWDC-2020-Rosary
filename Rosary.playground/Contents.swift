import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

let secondViewController = SecondViewController(screenType: .mac)
PlaygroundPage.current.liveView = secondViewController.scaleToFit()
