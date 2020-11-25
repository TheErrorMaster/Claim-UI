// Mauricio Macias
// mauricio.macias@csu.fullerton.edu
// 890741622

import UIKit
class ViewController: UIViewController {
    
    func fresh() -> (String,String) {
        return (vals[0].text!,vals[1].text!)
    }
    
    func refreshScreen(pObj : Claim) {
        vals[0].text = pObj.title
        vals[1].text = pObj.date
    }
    
    var lbls = [UILabel]()
    var vals = [UITextField]()
    var nextBtn : UIButton!
    var pService : ClaimService!
    
    
    @objc func gPerson(sender: UIButton) {
        pService.addClaim(pObj: Claim(title: fresh().0, date: fresh().1))
    }
}

