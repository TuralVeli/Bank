//
//  Color.swift
//  TestBank
//
//  Created by Tural Veliyev on 3/11/21.
//

import Foundation
import UIKit


extension UIColor {
    
static func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
         guard #available(iOS 13.0, *) else { return light }
         return UIColor { $0.userInterfaceStyle == .dark ? dark : light }
     }
    
static let myControlBackground: UIColor = dynamicColor(light: UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1), dark: UIColor(red: 63/255, green: 65/255, blue: 80/255, alpha: 1.0))

static let myLabelRedColor: UIColor = dynamicColor(light:UIColor(red: 242/255, green: 30/255, blue: 104/255, alpha: 1.0), dark:UIColor(red: 255/255, green: 143/255, blue: 100/255, alpha: 1.0))



    static let separatorColor: UIColor = dynamicColor(light:UIColor(red: 243/255, green: 244/255, blue: 250/255, alpha: 1.0), dark:UIColor(red: 78/255, green: 79/255, blue: 93/255, alpha: 1.0))
    
static var appGreen: UIColor {

    return (UIColor(red: 118/255, green: 188/255, blue: 33/255, alpha: 1.0))

    }
    
    static var appRed: UIColor {

        return (UIColor(red: 242/255, green: 30/255, blue: 104/255, alpha: 1.0))

      }
    
    static var appRedDarck: UIColor {

        return (UIColor(red: 255/255, green: 143/255, blue: 100/255, alpha: 1.0))

      }
    
static var appTextGreen: UIColor {

        return (UIColor(red: 0/255, green: 200/255, blue: 87/255, alpha: 1.0))

      }
    
static var appDarkBorderGrey: UIColor {

    return (UIColor(red: 151/255, green: 156/255, blue: 167/255, alpha: 1.0))

    }
 static var appBorderGrey: UIColor {

    return (UIColor(red: 151/255, green: 156/255, blue: 167/255, alpha: 1.0))

    }

}
