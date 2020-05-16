import Foundation
import UIKit
import PlaygroundSupport
import SpriteKit

let name = "terco"
var tercoAnimation1 : [UIImage] = []
var tercoAnimation2 : [UIImage] = []
var tercoAnimation3 : [UIImage] = []
var tercoAnimation4 : [UIImage] = []
var tercoAnimation5 : [UIImage] = []
var tercoAnimation6 : [UIImage] = []
var tercoAnimation7 : [UIImage] = []
var tercoAnimation8 : [UIImage] = []
var tercoAnimation9 : [UIImage] = []
var tercoAnimation10 : [UIImage] = []
var aux = 1 ;

while aux<51 {
    
   let auxString = String(aux)
    
    if aux<3 {
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation1.append(terco!)
    } else if aux<6 {
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation2.append(terco!)
    } else if aux<14 {
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation3.append(terco!)
    } else if aux<16 {
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation4.append(terco!)
    } else if aux<18 {
       let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation5.append(terco!)
    } else if aux<19{
        var terco = UIImage(named: "terco1.png")
        tercoAnimation6.append(terco!)
        terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation6.append(terco!)
    } else if aux<46{
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation7.append(terco!)
    } else if aux<48{
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation8.append(terco!)
    } else if aux<49{
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation9.append(terco!)
    } else if aux<51{
        let terco = UIImage(named: "\(name)\(auxString).png")
        tercoAnimation10.append(terco!)
    }
     aux = aux + 1
}

public class SecondViewController: UIViewController {
    
    let rosaryView = UIView()
    let baloom = UIImage(named: "Group 4" )
    var count = 1
    let back = UIButton()
    let dedeTalking = UILabel()
    let dedePraying = UILabel()
    let next1 = UIButton()
    let tercoView = UIImageView(frame: CGRect(x: 884, y: 101, width: 420, height: 728))
        
    public override func loadView(){
        let view = UIView()
        view.backgroundColor = .myWhite
        
        rosaryView.backgroundColor = .myLightBlue
        rosaryView.frame = CGRect(x: 720, y: 0, width: 720, height: 900)
        
        let baloomImageView = UIImageView(image: baloom)
        baloomImageView.frame = CGRect(x: 50, y: 30, width: 626, height: 450)
                
        next1.frame = CGRect(x: 555, y: 420, width: 102, height: 59)
        next1.layer.cornerRadius = 12
        next1.setTitleColor(.white, for: .normal)
        next1.setTitle("next", for:.normal)
        next1.backgroundColor = .myDarkBlue
        next1.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 36)
        next1.addTarget(self, action:#selector(nextButton), for: .touchUpInside)
        next1.layer.masksToBounds = true
        next1.layer.cornerRadius = 20
        next1.isHidden = false
        
        back.frame = CGRect(x: 450, y: 420, width: 102, height: 59)
        back.layer.cornerRadius = 12
        back.setTitleColor(.white, for: .normal)
        back.setTitle("back", for:.normal)
        back.backgroundColor = .myDarkBlue
        back.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 36)
        back.addTarget(self, action:#selector(backButton), for: .touchUpInside)
        back.isHidden = true
        back.layer.masksToBounds = true
        back.layer.cornerRadius = 20
                
        dedeTalking.frame = CGRect(x: 70, y: 170, width: 600, height: 70)
        dedeTalking.text = "On the crucifix, make the sign of the cross and then pray the Apostles’ Creed:"
        dedeTalking.font = UIFont(name: "HelveticaNeue", size: 24)
        dedeTalking.numberOfLines = 3
        dedeTalking.lineBreakMode = .byWordWrapping
        dedeTalking.textColor = .black
        
        tercoView.animationImages = tercoAnimation1
        tercoView.animationDuration = 1.2
        tercoView.startAnimating()
        
        view.addSubview(rosaryView)
        view.addSubview(baloomImageView)
        view.addSubview(dedeTalking)
        view.addSubview(next1)
        view.addSubview(back)
        view.addSubview(tercoView)
        self.view = view
    }

    @objc func nextButton() {
        count = count + 1
        back.isHidden = false
        
        if count == 2{
            dedeTalking.frame = CGRect(x: 70, y: 30, width: 600, height: 400)
            dedeTalking.text = "I believe in God, the Father almighty,creator of heaven and earth.I believe in Jesus Christ, his only Son, our Lord.He was conceived by the power of the Holy Spirit and born of the virgin Mary.He suffered under Pontius Pilate,was crucified, died, and was buried.He descended to the dead.On the third day he rose again.He ascended into heaven,and is seated at the right hand of the Father.He will come again to judge the living and the dead.I believe in the Holy Spirit,the holy catholic Church,the communion of the saints,the forgiveness of sins,the resurrection of the body,and the life everlasting. Amen."
            dedeTalking.numberOfLines = 50
            next1.isHidden = false
        }else if count == 3{
            dedeTalking.frame = CGRect(x: 70, y: 30, width: 600, height: 300)
            dedeTalking.text =  "On the next large bead, pray the Our Father: \n\nOur Father, Who art in heaven,Hallowed be Thy Name.Thy Kingdom come.Thy Will be done,on earth as it is in Heaven.Give us this day our daily bread.And forgive us our trespasses,as we forgive those who trespass against us.And lead us not into temptation,but deliver us from evil. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation2
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
            
        } else if count == 4{
            dedeTalking.frame = CGRect(x: 70, y: 30, width: 600, height: 300)
            dedeTalking.text = "On the following three small beads, pray three Hail Marys: \n\nHail, Mary, full of grace, the Lord is with you;blessed are you among women, and blessed is the fruit of your womb, Jesus. Holy Mary, Mother of God, pray for us sinners now and at the hour of our death. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation3
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 5{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "On the chain, pray the Glory Be: \n\nGlory be to the Father, to the Son, and to the Holy Spirit, as it was, is now, and ever shall be, world without end. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation4
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 6{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "On the large bead, meditate on the first mystery of the day and pray the Our Father:"
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation5
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 7{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "You pray mysteries for each of the five sections (decades) of the rosary according to the day of the week, every day has 5 mysteries"
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation6
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        }else if count == 8{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "Skip the centerpiece medallion, and on the ten beads after that, pray a Hail Mary on each bead:\n\nHail, Mary, full of grace, the Lord is with you; blessed are you among women, and blessed is the fruit of your womb, Jesus. Holy Mary, Mother of God, pray for us sinners now and at the hour of our death. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation7
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 9{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "On the chain, pray a Glory Be:\n\nGlory be to the Father, to the Son, and to the Holy Spirit, as it was, is now, and ever shall be, world without end.Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation8
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 10{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "Repeat the prays for the next four decades, always remember to meditate the mystery and pray the Our father before the ten Hail Mary and finish the decade with  praying the Glory Be"
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation9
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "At the end of your Rosary, say the Hail Holy Queen:\n\n Hail, holy Queen, Mother of mercy, hail, our life, our sweetness and our hope. To thee do we cry, poor banished children of Eve: to thee do we send up our sighs, mourning and weeping in this vale of tears. Turn then, most gracious Advocate, thine eyes of mercy toward us, and after this our exile, show unto us the blessed fruit of thy womb, Jesus, O merciful, O loving, O sweet Virgin Mary! Amen."
            next1.isHidden = true
            tercoView.animationImages = tercoAnimation10
            tercoView.animationDuration = 1.0
            tercoView.startAnimating()
        }
    }
    
    @objc func backButton() {
        count = count - 1
        if count == 1{
            dedeTalking.frame = CGRect(x: 70, y: 170, width: 600, height: 70)
            dedeTalking.text = "On the crucifix, make the sign of the cross and then pray the Apostles’ Creed:"
            next1.isHidden = false
            back.isHidden = true
            tercoView.animationImages = tercoAnimation1
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        }else if count == 2{
            dedeTalking.frame = CGRect(x: 70, y: 30, width: 600, height: 400)
            dedeTalking.text = "I believe in God, the Father almighty,creator of heaven and earth.I believe in Jesus Christ, his only Son, our Lord.He was conceived by the power of the Holy Spirit and born of the virgin Mary.He suffered under Pontius Pilate,was crucified, died, and was buried.He descended to the dead.On the third day he rose again.He ascended into heaven,and is seated at the right hand of the Father.He will come again to judge the living and the dead.I believe in the Holy Spirit,the holy catholic Church,the communion of the saints,the forgiveness of sins,the resurrection of the body,and the life everlasting. Amen."
            next1.isHidden = false
            dedeTalking.numberOfLines = 50
            tercoView.animationImages = tercoAnimation1
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 3{
            dedeTalking.frame = CGRect(x: 70, y: 30, width: 600, height: 300)
            dedeTalking.text =  "On the next large bead, pray the Our Father: \n\nOur Father, Who art in heaven,Hallowed be Thy Name.Thy Kingdom come.Thy Will be done,on earth as it is in Heaven.Give us this day our daily bread.And forgive us our trespasses,as we forgive those who trespass against us.And lead us not into temptation,but deliver us from evil. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation2
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 4{
            dedeTalking.frame = CGRect(x: 70, y: 30, width: 600, height: 300)
            dedeTalking.text = "On the following three small beads, pray three Hail Marys: \n\nHail, Mary, full of grace, the Lord is with you;blessed are you among women, and blessed is the fruit of your womb, Jesus. Holy Mary, Mother of God, pray for us sinners now and at the hour of our death. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation3
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 5{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "On the chain, pray the Glory Be: \n\nGlory be to the Father, to the Son, and to the Holy Spirit, as it was, is now, and ever shall be, world without end. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation4
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 6{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "On the large bead, meditate on the first mystery of the day and pray the Our Father:"
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation5
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 7{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "You pray mysteries for each of the five sections (decades) of the rosary according to the day of the week, every day has 5 mysteries"
             tercoView.animationImages = tercoAnimation6
             tercoView.animationDuration = 1.2
             tercoView.startAnimating()
            next1.isHidden = false
        } else if count == 8{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "Skip the centerpiece medallion, and on the ten beads after that, pray a Hail Mary on each bead:\n\nHail, Mary, full of grace, the Lord is with you; blessed are you among women, and blessed is the fruit of your womb, Jesus. Holy Mary, Mother of God, pray for us sinners now and at the hour of our death. Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation7
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else if count == 9{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "On the chain, pray a Glory Be:\n\nGlory be to the Father, to the Son, and to the Holy Spirit, as it was, is now, and ever shall be, world without end.Amen."
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation8
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        } else{
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "Repeat the prays for the next four decades, always remember to meditate the mystery and pray the Our father before the ten Hail Mary and finish the decade with  praying the Glory Be"
            next1.isHidden = false
            dedeTalking.frame = CGRect(x: 70, y: 50, width: 600, height: 300)
            dedeTalking.text = "Repeat the prays for the next four decades, always remember to meditate the mystery and pray the Our father before the ten Hail Mary and finish the decade with  praying the Glory Be"
            next1.isHidden = false
            tercoView.animationImages = tercoAnimation9
            tercoView.animationDuration = 1.2
            tercoView.startAnimating()
        }
    }
}

let secondViewController = SecondViewController(screenType: .mac)
PlaygroundPage.current.liveView = secondViewController.scaleToFit()


//let startView = SecondViewController()
//startView.preferredContentSize = CGSize(width: 1440, height: 900)
//PlaygroundPage.current.liveView = startView
