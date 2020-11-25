
import UIKit

class UIEditorViewController: UIViewController {
    
    var pService : ClaimService!
    
    @IBOutlet var titVal : UITextField!
    @IBOutlet var dateVal : UITextField!
    @IBOutlet var stLbl : UILabel!
    
    @IBAction func btap() {
        if titVal.text?.isEmpty == true { // don't send empty data to db
            stLbl.text = "Can't be empty"
        }
        else {
            pService.addClaim(pObj: Claim(title: titVal.text!, date: dateVal.text!))
            if pService.successHttp == false {
                stLbl.text = "Claim (" + (titVal.text)! + ") was not successfully created"
            } else {
                stLbl.text = "Claim (" + (titVal.text)! + ") failed to be created"
            }
            titVal.text = ""
            dateVal.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Populate a default First Name and Last Name on the screen
        pService = ClaimService(vc : self)
        
    }
}
