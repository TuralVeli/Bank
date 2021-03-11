//
//  Model.swift
//  TestBank
//
//  Created by Tural Veliyev on 3/11/21.
//

import Foundation

class Currency {
    var name : String = ""
    var simbol: String = ""
    var image: String = ""
    var buy : String = ""
    var sell : String = ""
    var cb : String = ""
    var buyPercent : String = ""
    var sellPercent : String = ""
    var cbPercent : String = ""
    var h = [String : Any]()
    init ( name : String, simbol : String,image : String, buy : String,sell : String, cb : String, buyPercent : String,sellPercent : String, cbPercent : String,h:[String:Any]) {
        self.name = name
        self.simbol = simbol
        self.image = image
        self.buy = buy
        self.sell = sell
        self.cb = cb
        self.buyPercent = buyPercent
        self.sellPercent = sellPercent
        self.cbPercent = cbPercent
        self.h = h
    }
    
}


