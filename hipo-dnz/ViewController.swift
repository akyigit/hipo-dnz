//
//  ViewController.swift
//  hipo-dnz
//
//  Created by Deniz AKYİĞİT on 19.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let data = DataLoader().memberData
        
        print(data)
    }


}

