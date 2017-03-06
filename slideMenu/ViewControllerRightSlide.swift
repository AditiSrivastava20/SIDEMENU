//
//  ViewControllerRightSlide.swift
//  slideMenu
//
//  Created by Sierra 4 on 03/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

class ViewControllerRightSlide: UIViewController {

    @IBOutlet weak var rightView: UIView!
   @IBOutlet weak var rightButtonslide: UIButton!
    
    override func viewDidLoad() {
       super.viewDidLoad()
           }
    
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let viewMenuBack : UIView = view
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            var frameMenu : CGRect = viewMenuBack.frame
            frameMenu.origin.x = +1 * UIScreen.main.bounds.size.width
            viewMenuBack.frame = frameMenu
            viewMenuBack.layoutIfNeeded()
            viewMenuBack.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            viewMenuBack.removeFromSuperview()
        })

    }
    
    
    
    
    @IBOutlet weak var slidepanel: UITableView!
    
    

   /* @IBAction func slidePANEL(_ sender: Any) {
        
        let viewMenuBack : UIView = view
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            var frameMenu : CGRect = viewMenuBack.frame
            frameMenu.origin.x = +1 * UIScreen.main.bounds.size.width
            viewMenuBack.frame = frameMenu
            viewMenuBack.layoutIfNeeded()
            viewMenuBack.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            viewMenuBack.removeFromSuperview()
        })
    }*/
    
    
    }
    extension ViewControllerRightSlide: UITableViewDelegate,UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return 1
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
            guard let cell:TableViewCellRightSlide = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableViewCellRightSlide else{ return TableViewCellRightSlide()}
            return cell
    }
}

