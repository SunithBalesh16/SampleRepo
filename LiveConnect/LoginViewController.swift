//
//  LoginViewController.swift
//  LiveConnect
//
//  Created by Sunith on 01/03/17.
//  Copyright © 2017 CSquare. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let array = ["background1","background2","background3","background4"]
    var count = 0

    @IBOutlet var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextAction(_ sender: Any) {
        
        if count <= 2 {
            count += 1
        }else {
            count = 0
        }
        backgroundImageView.image = UIImage(named: array[count])
        
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

extension LoginViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
