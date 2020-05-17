import UIKit

public class Dede {
    public var tercos: [[UIImage]] = [[]]
    
    public init(name: String) {
        tercos = makeAnimations(for: name)
    }
    
    func makeAnimations(for name: String) -> [[UIImage]] {
        var tercoAnimation1 : [UIImage] = []
        var tercoAnimation2 : [UIImage] = []
        
        var aux = 0 ;
        
        while aux<59 {
            let auxString = String(aux)
                let terco = UIImage(named: "\(name)\(auxString).png")
                tercoAnimation1.append(terco!)
            aux = aux + 1
        }
        let tercos: [[UIImage]] = [tercoAnimation1,
                                   tercoAnimation2]
        return tercos
    }
}
