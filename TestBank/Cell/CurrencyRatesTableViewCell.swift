//
//  CurrencyRatesTableViewCell.swift
//  TestBank
//
//  Created by Tural Veliyev on 3/11/21.
//

import UIKit

class CurrencyRatesTableViewCell: UITableViewCell {

    @IBOutlet weak var cbPriceLabel :UILabel!
    @IBOutlet weak var cbPricePercentLabel :UILabel!
    @IBOutlet weak var sellPriceLabel :UILabel!
    @IBOutlet weak var sellPricePercentLabel :UILabel!
    @IBOutlet weak var buyPriceLabel :UILabel!
    @IBOutlet weak var buyPricePercentLabel :UILabel!
    @IBOutlet weak var currenciesNameLabel :UILabel!
    @IBOutlet weak var currenciesLabel :UILabel!
    @IBOutlet weak var currenciesImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cbPricePercentLabel.textColor = .appTextGreen
        self.sellPricePercentLabel.textColor = .appTextGreen
        self.buyPricePercentLabel.textColor = .myLabelRedColor
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
