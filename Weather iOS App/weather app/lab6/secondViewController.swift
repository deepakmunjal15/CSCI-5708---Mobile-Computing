//
//  secondViewController.swift
//  lab6
//
//  Created by Deepak Munjal on 2016-11-01.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import Foundation
import UIKit

class secondViewController: UIViewController {
    
    var count : Int = 0
    var l2text = String()
    var l2text3 = String()
    var l2text5 = String()
    var l2text7 = String()
    var l2text9 = String()
    var l2text11 = String()
    var l2text13 = String()
    var l2text15 = String()
    var l2text17 = String()
    var l2text19 = String()
    var l2text21 = String()
    var l2text23 = String()
    var l2text25 = String()
    var l2text27 = String()
    var l2text2 = String()
    var l2text4 = String()
    var l2text6 = String()
    var l2text8 = String()
    var l2text10 = String()
    var l2text12 = String()
    var l2text14 = String()
    var l2text16 = String()
    var l2text18 = String()
    var l2text20 = String()
    var l2text22 = String()
    var l2text24 = String()
    var l2text26 = String()
    var l2text28 = String()
    
        

    @IBOutlet weak var buttonlabel1: UIButton!
    
    @IBAction func B1(sender: AnyObject) {
        count=1
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
        
    }
    
    @IBOutlet weak var buttonlabel2: UIButton!
    

    @IBAction func B2(sender: AnyObject) {
        count=2
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
        
    }
    

    @IBOutlet weak var buttonlabel3: UIButton!
    
    
    @IBAction func B3(sender: AnyObject) {
        count=3
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
        
    }
    
    
    @IBOutlet weak var buttonlabel4: UIButton!
    
    
    @IBAction func B4(sender: AnyObject) {
        count=4
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
        
    }
    
    
    @IBOutlet weak var buttonlabel5: UIButton!
    
    
    
    @IBAction func B5(sender: AnyObject) {
        count=5
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
       
    }
    
    
    @IBOutlet weak var buttonlabel6: UIButton!
    
    
    @IBAction func B6(sender: AnyObject) {
        count=6
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
        
    }
    
    
    @IBOutlet weak var buttonlabel7: UIButton!
    
    
    @IBAction func B7(sender: AnyObject) {
        count=7
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
       
    }
    

    
    @IBOutlet weak var buttonlabel8: UIButton!
    
    
    @IBAction func B8(sender: AnyObject) {
        count=8
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
    }
    
    
    @IBOutlet weak var buttonlabel9: UIButton!
    
    
    @IBAction func B9(sender: AnyObject) {
        count=9
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
    
    }
    
    
    @IBOutlet weak var buttonlabel10: UIButton!
    
    
    @IBAction func B10(sender: AnyObject) {
        count=10
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
       
    }
    
    
    @IBOutlet weak var buttonlabel11: UIButton!
    
    
    @IBAction func B11(sender: AnyObject) {
        count=11
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
        
    }
    
    
    @IBOutlet weak var buttonlabel12: UIButton!
    
    
    @IBAction func B12(sender: AnyObject) {
        count=12
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
    }
    
    
    @IBOutlet weak var buttonlabel13: UIButton!
    
    @IBAction func B13(sender: AnyObject) {
        count=13
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
    }
    
    
    @IBOutlet weak var buttonlabel14: UIButton!
    
    
    
    @IBAction func B14(sender: AnyObject) {
        count=14
        self.performSegueWithIdentifier("secondconnect2", sender: UIViewController.self)
    }
    
    

override func viewDidLoad() {
    super.viewDidLoad()
    
   buttonlabel1.setTitle(l2text, forState: .Normal)
   buttonlabel2.setTitle(l2text3, forState: .Normal)
   buttonlabel3.setTitle(l2text5, forState: .Normal)
   buttonlabel4.setTitle(l2text7, forState: .Normal)
   buttonlabel5.setTitle(l2text9, forState: .Normal)
   buttonlabel6.setTitle(l2text11, forState: .Normal)
   buttonlabel7.setTitle(l2text13, forState: .Normal)
   buttonlabel8.setTitle(l2text15, forState: .Normal)
   buttonlabel9.setTitle(l2text17, forState: .Normal)
   buttonlabel10.setTitle(l2text19, forState: .Normal)
   buttonlabel11.setTitle(l2text21, forState: .Normal)
   buttonlabel12.setTitle(l2text23, forState: .Normal)
   buttonlabel13.setTitle(l2text25, forState: .Normal)
    if(l2text27=="0")
    {
     buttonlabel14.hidden = true
    }
    else {
    buttonlabel14.setTitle(l2text27, forState: .Normal)
    }
 }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "secondconnect2"){
            let s2 : thirdViewController = segue.destinationViewController as! thirdViewController
            if(count==1)
            {
                s2.ltext = l2text2
            }
            else if(count==2) {
                s2.ltext = l2text4
            }
            else if(count==3) {
                s2.ltext = l2text6
            }
            else if(count==4) {
                s2.ltext = l2text8
            }
                
            else if(count==5) {
                s2.ltext = l2text10
            }
                
            else if(count==6) {
                s2.ltext = l2text12
            }
                
            else if(count==7) {
                s2.ltext = l2text14
            }
            else if(count==8) {
                s2.ltext = l2text16
            }
            else if(count==9) {
                s2.ltext = l2text18
            }
            else if(count==10) {
                s2.ltext = l2text20
            }
                
            else if(count==11) {
                s2.ltext = l2text22
            }
                
            else if(count==12) {
                s2.ltext = l2text24
            }
                
            else if (count==13) {
                s2.ltext = l2text26
            }
                
            else if (count==14) {
                s2.ltext = l2text28
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
    
}
