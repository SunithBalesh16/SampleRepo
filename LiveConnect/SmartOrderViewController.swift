//
//  SmartOrderViewController.swift
//  LiveConnect
//
//  Created by Sunith on 28/02/17.
//  Copyright © 2017 CSquare. All rights reserved.
//

import UIKit

protocol SmartOrderViewControllerDelegate : class {
    func showSlider()
}

class SmartOrderViewController: UIViewController {

    weak var delegate : SmartOrderViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action

    @IBAction func slideAction(_ sender: Any) {
        delegate.showSlider()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
