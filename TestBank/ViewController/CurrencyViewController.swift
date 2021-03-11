//
//  CurrencyViewController.swift
//  TestBank
//
//  Created by Tural Veliyev on 3/11/21.
//

import UIKit

class CurrencyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var converterButtonOutlet: UIButton!
    var currency:[Currency] = []
    
    var AZN = ["AZN": 1.0, "USD": 1.6970, "EUR": 1.9130, "RUR": 0.0252, "GBP": 2.1460] as [String : Any]
    var USD = ["AZN": 1.6850, "USD": 1.0, "EUR":0.8431, "RUR": 75.8980, "GBP": 0.7380] as [String : Any]
    var EUR = ["AZN": 2.01993, "USD": 1.18819, "EUR":1, "RUR": 88.0549, "GBP": 0.85658] as [String : Any]
    var RUR = ["AZN": 0.02292, "USD": 0.01348, "EUR":0.01135, "RUR": 1, "GBP": 0.00972] as [String : Any]
    var GBP = ["AZN": 2.35789, "USD": 1.38700, "EUR":1.16719, "RUR":102.788, "GBP": 1] as [String : Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.converterButtonOutlet.layer.cornerRadius = 10
        self.converterButtonOutlet.clipsToBounds = true
        self.view.backgroundColor = .myControlBackground
        self.tableView.backgroundColor = .myControlBackground
        self.converterButtonOutlet.backgroundColor = .appGreen
        self.converterButtonOutlet.addRightIcon(image:UIImage(named: "refresh")!)
        self.converterButtonOutlet.setTitle("Converter", for: UIControl.State.normal)
        self.add()
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorColor = UIColor.separatorColor


    }
    func add() {
        
        let usd =  Currency(name: "USD", simbol: "US Dollar", image: "dollar", buy: "1.6970", sell: "1.7025", cb: "1.7025", buyPercent: "-0.06%", sellPercent: "0.06%", cbPercent: "0.06%", h: USD)
        let manat =  Currency(name: "AZN", simbol: "Azerbaijani manat", image: "manat", buy: "", sell: "", cb: "", buyPercent: "", sellPercent: "", cbPercent: "",h: AZN)
        
        let eur =  Currency(name: "EUR", simbol: "Euro", image: "euro", buy: "1.9130", sell: "1.9540", cb: "1.7025", buyPercent: "-0.19%", sellPercent: "-0.18%", cbPercent: "-0.06%",h:EUR)
        
        
        let rub =  Currency(name: "RUR", simbol: "Russian Ruble", image: "rub", buy: "1.9130", sell: "1.9540", cb: "1.7025", buyPercent: "-0.19%", sellPercent: "-0.18%", cbPercent: "-0.06%",h:RUR)
        
        let gbp =  Currency(name: "GBP", simbol: "GB Pound", image: "gbp", buy: "1.9130", sell: "1.9540", cb: "1.7025", buyPercent: "-0.19%", sellPercent: "-0.18%", cbPercent: "-0.06%",h:GBP)
        

        currency.append(manat)
        currency.append(usd)
        currency.append(eur)
        currency.append(rub)
        currency.append(gbp)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currency.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CurrencyRatesTableViewCell
        if indexPath.row == 0 {
            
            self.tableView.rowHeight = 0
            
        } else {
            
            self.tableView.rowHeight = 73
            
        }
        cell.buyPriceLabel.text = currency[indexPath.row].buy
        cell.buyPricePercentLabel.text = currency[indexPath.row].buyPercent
        cell.cbPriceLabel.text = currency[indexPath.row].cb
        cell.cbPricePercentLabel.text = currency[indexPath.row].cbPercent
        cell.sellPriceLabel.text = currency[indexPath.row].sell
        cell.sellPricePercentLabel.text = currency[indexPath.row].sellPercent
        cell.currenciesLabel.text =  currency[indexPath.row].simbol
        cell.currenciesNameLabel.text = currency[indexPath.row].name
        cell.currenciesImage.image = UIImage(named:"\(currency[indexPath.row].image)")
        cell.contentView.backgroundColor = .myControlBackground


        
        return cell
    }
    

    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 73.0
    }
    
    @IBAction func converterButton(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "ConvertView") as! ConvertViewController
            newViewController.modalPresentationStyle = .fullScreen
            newViewController.currency += currency
       self.present(newViewController, animated: true)
    }
    

}


