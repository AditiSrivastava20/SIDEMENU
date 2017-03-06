//
//  ViewController.swift
//  slideMenu
//
//  Created by Sierra 4 on 02/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftbtn: UIButton!
    @IBOutlet weak var rightbtn: UIButton!
        override func viewDidLoad() {
        super.viewDidLoad()
        let Rightswipe = UISwipeGestureRecognizer(target: self, action: #selector(self.SwipeGesture))
        Rightswipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(Rightswipe)
            
        let Leftswipe = UISwipeGestureRecognizer(target: self, action: #selector(self.SwipeGesture))
        Leftswipe.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(Leftswipe)
            
        // Do any additional setup after loading the view, typically from a nib.
       }
    
    func SwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
        case UISwipeGestureRecognizerDirection.right:
                let menu : ViewControllerLelfSlide = self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerLelfSlide") as! ViewControllerLelfSlide
                 self.view.addSubview(menu.view)
                 self.addChildViewController(menu)
                 menu.view.layoutIfNeeded()
                 menu.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                 UIView.animate(withDuration: 0.3, animations: { () -> Void in
                 menu.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                 
                 }, completion:nil)
    
               
    case UISwipeGestureRecognizerDirection.left:
                
                 let menu : ViewControllerRightSlide = self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerRightSlide") as! ViewControllerRightSlide
                 self.view.addSubview(menu.view)
                 self.addChildViewController(menu)
                 menu.view.layoutIfNeeded()
                 menu.view.frame=CGRect(x: 0 + UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                 UIView.animate(withDuration: 0.3, animations: { () -> Void in
                 menu.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
                 
                 }, completion:nil)
          
    
               default:
                break
            }
        }
    }
    




    @IBAction func rightPanel(_ sender: UIButton) {
    
    if (sender.tag == 10)
        {
            
            sender.tag = 0;
            
            let viewMenuBack : UIView = view.subviews.last!
            
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                var frameMenu : CGRect = viewMenuBack.frame
                frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
                viewMenuBack.frame = frameMenu
                viewMenuBack.layoutIfNeeded()
                viewMenuBack.backgroundColor = UIColor.clear
            }, completion: { (finished) -> Void in
                viewMenuBack.removeFromSuperview()
            })
            return
        }
        
        sender.isEnabled = false
        sender.tag = 10
        
        let menu : ViewControllerRightSlide = self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerRightSlide") as! ViewControllerRightSlide
        self.view.addSubview(menu.view)
        self.addChildViewController(menu)
        menu.view.layoutIfNeeded()
        
        
        menu.view.frame=CGRect(x: 0 + UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            menu.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            sender.isEnabled = true
        }, completion:nil)
        
                }
            
 
   
    @IBAction func leftPanel(_ sender: UIButton) {
        
    
        if (sender.tag == 10)
        {
            
            sender.tag = 0;
            
            let viewDETAILS : UIView = view.subviews.last!
            
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                var frameMenu : CGRect = viewDETAILS.frame
                frameMenu.origin.y = -1 * UIScreen.main.bounds.size.width
                viewDETAILS.frame = frameMenu
                viewDETAILS.layoutIfNeeded()
                viewDETAILS.backgroundColor = UIColor.clear
            }, completion: { (finished) -> Void in
                viewDETAILS.removeFromSuperview()
            })
            
            return
        }
        
        sender.isEnabled = false
        sender.tag = 10
        
        let menu : ViewControllerLelfSlide = self.storyboard!.instantiateViewController(withIdentifier: "ViewControllerLelfSlide") as! ViewControllerLelfSlide
        self.view.addSubview(menu.view)
        self.addChildViewController(menu)
        menu.view.layoutIfNeeded()
        
        
        menu.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            menu.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            sender.isEnabled = true
        }, completion:nil)
    }
   
    }




