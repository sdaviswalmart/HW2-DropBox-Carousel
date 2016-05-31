//
//  TimelineViewController.swift
//  HW2-DropBox Carousel
//
//  Created by Stephen Davis on 5/30/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    

    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
            scrollView.contentSize = CGSize(width: 320, height: 1200)

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
