//
//  TutorialViewController.swift
//  HW2-DropBox Carousel
//
//  Created by Stephen Davis on 5/30/16.
//  Copyright © 2016 Stephen Davis. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backButton: UIImageView!
    
    var pageToShow: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width:1280, height:568)
        scrollView.delegate = self
        backButton.alpha=0
    


        // Do any additional setup after loading the view.
    }

    
    func scrollViewDidScroll(scrollView:UIScrollView) {
        pageToShow = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = pageToShow
            
        if (pageToShow == 3) {
            pageControl.hidden = true
            UIView.animateWithDuration(0.3) { () -> Void in
                self.backButton.alpha = 1
            }
        }
        
        else {
            pageControl.hidden = false
            if (backButton.alpha > 0) {
                UIView.animateWithDuration(0.3) { () -> Void in
                    self.backButton.alpha = 0
                }
            }
        }
    }

        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}

