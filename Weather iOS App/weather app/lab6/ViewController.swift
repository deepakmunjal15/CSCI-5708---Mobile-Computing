//
//  ViewController.swift
//  lab6
//
//  Created by Deepak Munjal on 2016-10-28.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import UIKit
var d=String()
var key = " Halifax"
var val : String = ""
var iarray: [String] = []
var url_found:String = "https://weather.gc.ca/rss/city/ns-19_e.xml"


// 3. implement delegate
class ViewController: UIViewController, XMLParserDelegate {
    
    
    //function to find URL from CSV file corresponding to city entered by user in textbox
    func checker(key : String) -> String{
        let file = NSBundle.mainBundle().URLForResource("feeds", withExtension:"csv")
        let text:String?
        do
        {
            text = try String(contentsOfURL: file!, encoding: NSUTF8StringEncoding)
        }
            
       catch
        {
            text = nil
        }
        
        var str = ""
        str = text!
        let arr:Array = str.componentsSeparatedByString(",")
        var k = 0
        var j = 1
        var i = 0
        
        var dic:Dictionary<String,String> = ["city":arr[j],"url":arr[k]]
        dic = [:]
        
        for i in 0...(arr.count/2)-1
            
        {
         if i>0
         {
           k = k+2
           j = j+2
          }
        dic[arr[j]] = arr[k]
        }
        
       val = dic[key]!
       iarray=text_chunk("http:.+|https:.+", text: val)
       url_found=iarray[0]
       return url_found
     }
    
     func text_chunk(regex: String, text: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: regex, options: [])
            let nsString = text as NSString
            let results = regex.matchesInString(text,
            options: [], range: NSMakeRange(0, nsString.length))
            return results.map { nsString.substringWithRange($0.range)}
            }
        catch let error as NSError {
           print("invalid regex: \(error.localizedDescription)")
           return []
          }
    }
    
    let url = NSURL(string: "https://weather.gc.ca/rss/city/ns-19_e.xml")
    var xmlParser = XMLParser()
    var d:String=""
    var d2:String=""
    var d3:String=""
    var d4:String=""
    var d5:String=""
    var d6:String=""
    var d7:String=""
    var d8:String=""
    var d9:String=""
    var d10:String=""
    var d11:String=""
    var d12:String=""
    var d13:String=""
    var d14:String=""
    var d15:String=""
    var d16:String=""
    var d17:String=""
    var d18:String=""
    var d19:String=""
    var d20:String=""
    var d21:String=""
    var d22:String=""
    var d23:String=""
    var d24:String=""
    var d25:String=""
    var d26:String=""
    var d27:String=""
    var d28:String=""
    
    
    @IBOutlet weak var locationdata: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        xmlParser.delegate = self
        xmlParser.startParsingWithContentsOfURL(url!)
        d = xmlParser.ts()
        d2 = xmlParser.ts2()
        d3 = xmlParser.ts3()
        d4 = xmlParser.ts4()
        d5 = xmlParser.ts5()
        d6 = xmlParser.ts6()
        d7 = xmlParser.ts7()
        d8 = xmlParser.ts8()
        d9 = xmlParser.ts9()
        d10 = xmlParser.ts10()
        d11 = xmlParser.ts11()
        d12 = xmlParser.ts12()
        d13 = xmlParser.ts13()
        d14 = xmlParser.ts14()
        d15 = xmlParser.ts15()
        d16 = xmlParser.ts16()
        d17 = xmlParser.ts17()
        d18 = xmlParser.ts18()
        d19 = xmlParser.ts19()
        d20 = xmlParser.ts20()
        d21 = xmlParser.ts21()
        d22 = xmlParser.ts22()
        d23 = xmlParser.ts23()
        d24 = xmlParser.ts24()
        d25 = xmlParser.ts25()
        d26 = xmlParser.ts26()
        d27 = xmlParser.ts27()
        d28 = xmlParser.ts28()
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // implement delegate
    func didFinishTask(sender: XMLParser) {
        print("parse has ended")
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "connect1")
        {
            let s : secondViewController = segue.destinationViewController as! secondViewController
            s.l2text = d
            s.l2text3 = d3
            s.l2text5 = d5
            s.l2text7 = d7
            s.l2text9 = d9
            s.l2text11 = d11
            s.l2text13 = d13
            s.l2text15 = d15
            s.l2text17 = d17
            s.l2text19 = d19
            s.l2text21 = d21
            s.l2text23 = d23
            s.l2text25 = d25
            s.l2text27 = d27
            s.l2text2 = d2
            s.l2text4 = d4
            s.l2text6 = d6
            s.l2text8 = d8
            s.l2text10 = d10
            s.l2text12 = d12
            s.l2text14 = d14
            s.l2text16 = d16
            s.l2text18 = d18
            s.l2text20 = d20
            s.l2text22 = d22
            s.l2text24 = d24
            s.l2text26 = d26
            s.l2text28 = d28
        }
    }
    
    
    @IBAction func mainbutton(sender: AnyObject) {
        
        key=locationdata.text!
        key=" "+key
        //print(key)
        url_found=checker(key)
        //print(url_found)
        let url = NSURL(string: url_found)
        var xmlParser = XMLParser()
        //print(url)
        //print(xmlParser)
        xmlParser.delegate = self
        xmlParser.startParsingWithContentsOfURL(url!)
        self.performSegueWithIdentifier("connect1", sender: xmlParser)
        
    }
    
    
    
}