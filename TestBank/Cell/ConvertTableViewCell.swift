//
//  ConvertTableViewCell.swift
//  TestBank
//
//  Created by Tural Veliyev on 3/11/21.
//

import UIKit

protocol cellClick {
    
    func didClick(cell:UITextField)
    
}
class ConvertTableViewCell: UITableViewCell,UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var correncyName: UILabel!
    @IBOutlet weak var correncyShortName: UILabel!
    @IBOutlet weak var currencyImage: UIImageView!
    
    var delegate:cellClick?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.textField.textAlignment = NSTextAlignment.right
        UITextField.appearance().tintColor = .appGreen
        // Initialization code
    }

    @IBAction func textfieldAction(_ sender: UITextField) {
     
        delegate?.didClick(cell:textField)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
