
import UIKit

class UIEditorViewController: UIViewController {
    
//    func ps(a:String,b:String)  {
//        pService.addPerson(pObj: Person(firstName: a, lastName: b, ssn: "String"))
//        print("went thru")
//    }
    
    var pService : PersonService!
    
    @IBOutlet var fnVal : UITextField!
    @IBOutlet var lnVal : UITextField!
    @IBOutlet var stLbl : UILabel!
    @IBAction func btap() {
        if fnVal.text?.isEmpty == true { // don't send empty data to db
            stLbl.text = "Can't be empty"
        }
        else {
//            ps(a:fnVal.text!,b:lnVal.text!) // send to db
            pService.addPerson(pObj: Person(firstName: fnVal.text!, lastName: lnVal.text!, ssn: "String"))
            if pService.successHttp == false {
                stLbl.text = "Claim (" + (fnVal.text)! + ") was not successfully created"
            } else  {
                stLbl.text = "Claim (" + (fnVal.text)! + ") was successfully created"
            }
            
//            stLbl.text = "Claim (" + (fnVal.text)! + ") was successfully created" //
            fnVal.text = ""
            lnVal.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Populate a default First Name and Last Name on the screen
        pService = PersonService(vc : self)
        
//        pService.addPerson(pObj: Person(firstName: "bro", lastName: "String", ssn: "String"))
        //pService.getAll()

    }
}
