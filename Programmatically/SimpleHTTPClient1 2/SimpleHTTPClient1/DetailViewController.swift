//
//  DetailViewController.swift
//  SimpleHTTPClient1
//
//  Created by ITLoaner on 11/4/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class DetailViewController : ViewController {

    override func fresh() -> (String,String) {
        return (detailScreenGenerator.vals[0].text!,detailScreenGenerator.vals[1].text!)
    }
    
    override func refreshScreen(pObj: Claim) {
        
        //
        if pService.successHttp == true {
            detailScreenGenerator.resplbl.text = "Claim (" + pObj.title + ") was successfully created"
        } else {
            detailScreenGenerator.resplbl.text = "Claim (" + pObj.title + ") was not successfully created"
        }
        detailScreenGenerator.vals[0].text = " "
        detailScreenGenerator.vals[1].text = " "
        //detailScreenGenerator.vals[1].placeholder = pObj.lastName
        //detailScreenGenerator.vals[2].placeholder = pObj.ssn

        // Enable/Disable the button
        detailScreenGenerator.nextBtn.isEnabled = !pService.isLastEntry()
        // Change the brightness if needed
        if detailScreenGenerator.nextBtn.isEnabled {
            detailScreenGenerator.nextBtn.backgroundColor = detailScreenGenerator.nextBtn.backgroundColor?.withAlphaComponent(1.0)
        } else {
            detailScreenGenerator.nextBtn.backgroundColor = detailScreenGenerator.nextBtn.backgroundColor?.withAlphaComponent(0.3)
        }
        
//        if detailScreenGenerator.vals[0].text != "a" {
//            print("bro1")
//        }
        
    }
    

    var detailScreenGenerator : PersonDetailScreenGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Create screen
        detailScreenGenerator = PersonDetailScreenGenerator(v: view)
        print("Screen generator initialized. ")
        detailScreenGenerator.generate()
        
        // 2. Prepare data
        pService = ClaimService(vc : self)
        pService.getAll()
        //pService.addPerson(pObj: Person(firstName: "000", lastName: "110", ssn: "220"))
        // 3. Set the event handling
        let nBtn = detailScreenGenerator.nextBtn
//        nBtn?.addTarget(self, action: #selector(goNextPerson(sender:)), for: .touchUpInside)
        nBtn?.addTarget(self, action: #selector(gPerson(sender:)), for: .touchUpInside)
        //nBtn?.addTarget(self, action: #selector(goPerson), for: .touchUpInside)
    }
}
