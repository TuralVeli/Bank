//
//  ConvertViewController.swift
//  TestBank
//
//  Created by Tural Veliyev on 3/11/21.
//

import UIKit

class ConvertViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate,cellClick {
    
    
    var currency:[Currency] = []
    var IndexArray  = [Int]()
  
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .myControlBackground
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.backgroundColor = .myControlBackground
        self.tableView.tableFooterView = UIView()
        self.tableView.separatorColor = UIColor.separatorColor

    }



    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currency.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ConvertTableViewCell
        cell.correncyName.text = currency[indexPath.row].simbol
        cell.correncyShortName.text = currency[indexPath.row].name
        cell.currencyImage.image = UIImage(named:"\(String(describing: currency[indexPath.row].image))")
        cell.selectionStyle = .none
        cell.contentView.backgroundColor = .myControlBackground
        cell.textField.delegate = self
        cell.textField.tag = indexPath.row
        self.IndexArray.append(indexPath.row)
        cell.delegate = self
        return cell
    }
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 73.0
        
    }
    
    func didClick(cell: UITextField) {
        let text = cell.text!.replacingOccurrences(of: " ", with: "")
        let number  = Double(text) ?? 0.0
        for indextag in IndexArray  {
        if  indextag != cell.tag{

        let index = IndexPath(row: indextag, section:0)
        let cells: ConvertTableViewCell = self.tableView.cellForRow(at: index) as! ConvertTableViewCell
        let filtered = currency[cell.tag].h.filter { $0.key == "\(currency[indextag].name)" }
        let r = filtered.first!.value as! Double
           
            cells.textField.text = "\(Double(round(1000 * (number * r))/1000))"

    }
            
    }
        
    }
    
    

    @IBAction func cancelButton(_ sender: Any) {
        
        self.dismiss(animated: false, completion: nil)
    }
    
    
    
 
}



