//
//  ViewControllerLelfSlide.swift
//  slideMenu
//
//  Created by Sierra 4 on 03/03/17.
//  Copyright © 2017 codebrew. All rights reserved.
//

import UIKit

let section = ["", "", ""]


var number :[[String]] = [ ["Home","Shop by category","Today's deal"],
                          ["Your Order","Your Wish List","Your Account","Amazon Pay","Sell On Amazon"],["Settings","Customer Services"] ]

class ViewControllerLelfSlide: UIViewController {
@IBOutlet weak var leftButtonslide: UITableView!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
//        let newView = UIView(frame: CGRect(x: 240, y: 0, width: 80, height: 565))
//        newView.backgroundColor = UIColor.clear
//        self.view.addSubview(newView)
//        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(viewtap))
//        self.view.addGestureRecognizer(tapgesture)
//        
       /* arrayOfCellData = [
            cellData(Section : "",cellObject : [
                celldataValue(label: "Home", image: #imageLiteral(resourceName: "Unknown")  ),
                celldataValue(label: "My reviews", image: #imageLiteral(resourceName: "My reviews")),
                celldataValue(label: "Photos", image: #imageLiteral(resourceName: "Photos"))
                ]),
            cellData(Section : "",cellObject : [
                celldataValue(label: "Claimed businesses", image: #imageLiteral(resourceName: "Claimed Business") ),
                ])
        ]*/
        
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let viewMenuBack : UIView = view
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            var frameMenu : CGRect = viewMenuBack.frame
            frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
            viewMenuBack.frame = frameMenu
            viewMenuBack.layoutIfNeeded()
            viewMenuBack.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            viewMenuBack.removeFromSuperview()
            
        })
    }

    
    
  /*  @IBAction func SLIDEPANEL(_ sender: UIButton) {
   
        let viewMenuBack : UIView = view
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            var frameMenu : CGRect = viewMenuBack.frame
            frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
            viewMenuBack.frame = frameMenu
            viewMenuBack.layoutIfNeeded()
            viewMenuBack.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            viewMenuBack.removeFromSuperview()
        })
    }*/
    
}
extension ViewControllerLelfSlide: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return number[section].count
    
}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        guard let cell:TableViewCellLeftSlide = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableViewCellLeftSlide else{ return TableViewCellLeftSlide()}
        cell.lblOptions.text = number[indexPath.section][indexPath.row]
      return cell
    }
       func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return section.count
        
    }
    /*func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData[section].count
    }*/
    func numberOfSections(in tableView: UITableView) -> Int {
        return number.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let viewheader = UIView(frame: CGRect.init(x: 0, y: 0, width: 12, height: 2))
        viewheader.backgroundColor = UIColor.gray
        
                return viewheader
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
}
        


