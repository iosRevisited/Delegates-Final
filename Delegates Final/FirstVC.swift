//
//  FirstVC.swift
//  Delegates Starter
//
//  Created by SaiSandeep on 19/10/17.
//  Copyright © 2017 iOSRevisited. All rights reserved.
//

import UIKit

class FirstVC: UIViewController,SecondVCDelegate {

    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController, let secondVC = nav.topViewController as? SecondVC {
            secondVC.delegate = self
        }
    }
    
    func changeQuote(_ text: String?) {
        quoteLabel.text = text
    }

}


