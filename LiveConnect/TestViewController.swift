//
//  TestViewController.swift
//  LiveConnect
//
//  Created by Sunith on 01/03/17.
//  Copyright © 2017 CSquare. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet var testLabel: UILabel!
    
    var isOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        isOpen = false
        testLabel.frame = CGRect(x: -view.bounds.width, y: 20, width: view.bounds.width, height: 40)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5) {
            self.testLabel.frame.origin.x = 0
            self.isOpen = true
        }
    }

    @IBAction func slideAction(_ sender: Any) {
        if isOpen{
            isOpen = false
            UIView.animate(withDuration: 0.5) {
                self.testLabel.frame.origin.x -= self.view.bounds.width
            }
        }else{
            isOpen = true
            UIView.animate(withDuration: 0.5) {
                self.testLabel.frame.origin.x = 0
            }
        }
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
