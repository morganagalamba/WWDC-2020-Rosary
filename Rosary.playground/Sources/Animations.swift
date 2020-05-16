import UIKit

public class Animations {
    public var tercos: [[UIImage]] = [[]]
    
    public init(name: String) {
        tercos = makeAnimations(for: name)
    }
    
    func makeAnimations(for name: String) -> [[UIImage]] {
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
        let tercos: [[UIImage]] = [tercoAnimation1,
                                   tercoAnimation2,
                                   tercoAnimation3,
                                   tercoAnimation4,
                                   tercoAnimation5,
                                   tercoAnimation6,
                                   tercoAnimation7,
                                   tercoAnimation8,
                                   tercoAnimation9,
                                   tercoAnimation10]
        return tercos
    }
}
