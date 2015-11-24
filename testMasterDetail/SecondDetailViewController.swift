//
//  OtherViewController.swift
//  testMasterDetail
//
//  Created by Pieter Kubben on 21-11-15.
//  Copyright © 2015 DigitalNeurosurgeon.com. All rights reserved.
//

import UIKit

class SecondDetailViewController: UIViewController {

    @IBOutlet weak var otherLabel: UILabel!
    var textValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otherLabel.text = textValue
    }
    
    override func awakeFromNib() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        //let currentController = app.window!.rootViewController;
        app.window!.rootViewController = self;
    }

    @IBAction func nextButtonTapped(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "ThirdScreen", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! ThirdDetailViewController
        controller.title = "Miracle!"
        splitViewController?.showDetailViewController(controller, sender: nil)
        //splitViewController?.viewControllers = [(splitViewController?.viewControllers.first)!, controller]
//        let app = UIApplication.sharedApplication().delegate as! AppDelegate
    }

}
