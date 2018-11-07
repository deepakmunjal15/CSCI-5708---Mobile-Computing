//
//  thirdViewController.swift
//  lab6
//
//  Created by Deepak Munjal on 2016-11-01.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    
    var ltext = String()

    
    @IBOutlet weak var textbox3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textbox3.textContainer.maximumNumberOfLines = 0;
        //textbox3.textAlignment = NSTextAlignment.Left
        textbox3.text = ltext
        textbox3.font = .systemFontOfSize(10)
        textbox3.textContainer.lineBreakMode = NSLineBreakMode.ByWordWrapping
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
