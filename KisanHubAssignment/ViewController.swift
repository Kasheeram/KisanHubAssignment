//
//  ViewController.swift
//  KisanHubAssignment
//
//  Created by Apogee on 8/18/17.
//  Copyright © 2017 Apogee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let requestURL: NSURL = NSURL(string:  "http://www.metoffice.gov.uk/pub/data/weather/uk/climate/datasets/Tmean/ranked/UK.txt")!
        let url = URL(string: "http://www.metoffice.gov.uk/pub/data/weather/uk/climate/datasets/Tmean/ranked/UK.txt")
        
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
           // print(NSString(data: data!, encoding: String.Encoding.utf8.rawValue))
            let datavalue = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            let myStrings = datavalue?.components(separatedBy: .newlines)
            //let string = myStrings?.joined(separator: ", ")
            print(myStrings!.count)
            let str = myStrings![115]
            print(str)
            let components = str.components(separatedBy: .whitespacesAndNewlines)
            let words = components.filter { !$0.isEmpty }
            //print(words[0])
        }
        
        task.resume()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

