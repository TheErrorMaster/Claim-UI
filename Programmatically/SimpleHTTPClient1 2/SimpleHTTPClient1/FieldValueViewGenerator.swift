// Mauricio Macias
// mauricio.macias@csu.fullerton.edu
// 890741622

import UIKit

class FieldValueViewGenerator {
    var lblName : String!
    
    init(n : String) {
        lblName = n
    }
    
    func generate() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        //
        let lbl = UILabel()
        lbl.text = lblName
        lbl.backgroundColor = UIColor.white
        lbl.sizeToFit()
        stackView.addArrangedSubview(lbl)
        let val = UITextField()
        val.borderStyle = .roundedRect
        stackView.addArrangedSubview(val)
        return stackView
    }
}
