//
//  ContainerViewController.swift
//  LiveConnect
//
//  Created by Sunith on 28/02/17.
//  Copyright © 2017 CSquare. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "SliderViewController") as! SliderViewController
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "SmartOrderViewController") as! SmartOrderViewController
        addChildViewController(vc1)
        vc1.view.frame = CGRect(x: -containerView.bounds.width, y: 0, width: containerView.bounds.width, height: containerView.bounds.height)
        containerView.addSubview(vc1.view)
        vc1.didMove(toParentViewController: self)
        addChildViewController(vc2)
        vc2.delegate = self
        vc2.view.frame = CGRect(x: 0, y: 0, width: containerView.bounds.width, height: containerView.bounds.height)
        containerView.addSubview(vc2.view)
        vc2.didMove(toParentViewController: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

extension ContainerViewController : SmartOrderViewControllerDelegate {
    
    func showSlider() {
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        print(self.childViewControllers[0])
//                        self.childViewControllers[0].view.
//                        self.view.sendSubview(toBack: self.childViewControllers[1].view)
                        self.view.bringSubview(toFront: self.childViewControllers[0].view)
                        self.childViewControllers[0].view.center.x = 200
        }, 
                       completion: nil
        )
    }
    
}
