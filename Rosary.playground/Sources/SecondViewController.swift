import Foundation
import UIKit
import PlaygroundSupport

public class SecondViewController: UIViewController {
    
    var count = 0
    let rosaryView = UIView()
    let baloom = UIImage(named: "Group 4" )
    

    
    public override func loadView(){
        let view = UIView()
        view.backgroundColor = .myWhite
        
        rosaryView.backgroundColor = .myLightBlue
        rosaryView.frame = CGRect(x: 720, y: 0, width: 720, height: 900)
        
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 293, y: 100, width: 400, height: 500)
        
        view.addSubview(rosaryView)
        view.addSubview(baloomImageView)
        self.view = view
    }

}
