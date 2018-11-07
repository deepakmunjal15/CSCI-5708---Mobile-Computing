//
//  XMLParser.swift
//  lab6
//
//  Created by Deepak Munjal on 2016-10-28.
//  Copyright © 2016 Default Profile. All rights reserved.
//

import Foundation
import UIKit

// 1. define protocal
protocol XMLParserDelegate: class {
    func didFinishTask(sender: XMLParser)
}

extension String {
    
    var html_to_text: NSAttributedString? {
        
        guard
            let data = dataUsingEncoding(NSUTF8StringEncoding)
            else { return nil }
        do {
            return try NSAttributedString(data: data, options: [NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType,NSCharacterEncodingDocumentAttribute:NSUTF8StringEncoding], documentAttributes: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
            return  nil
        }
        
    }
    
    var html2String: String {
        return html_to_text?.string ?? ""
    }
}


 var a: [String] = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
 var i : Int = 0
 var j : Int = 0



class XMLParser: NSObject, NSXMLParserDelegate {
    
    var currentElement = "" // current element during parsing
    
    // 2. define delegate variable
    weak var delegate:XMLParserDelegate?
    
    
    func startParsingWithContentsOfURL(rssURL: NSURL) {
        let parser = NSXMLParser(contentsOfURL: rssURL)
        parser!.delegate = self
        parser!.parse()
    }
    
    // called every time the parser finds a <key>
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        //print(elementName)
        currentElement = elementName
    }
    
    
    //called every time the parser enters a <key> and it will stop on line breaks
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        //all title elements are collected here
        if currentElement == "title" {
            a[i]=string
            i=i+1
        }
        
        //all summary elements are collected here
        if currentElement == "summary" {
            a[i]=string
            i=i+1
        }
        
    }
    
    
    
    // called every time the parser finds a </key>
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        currentElement = ""
    }
    
    
    
    // called when the parser finished the document
    func parserDidEndDocument(parser: NSXMLParser) {
        // 5. calling delegate method
        delegate?.didFinishTask(self)
    }

    //current_weather
    func ts() -> String {
        return (a[0]+"\r\n"+a[1]+"\r\n"+a[3]+a[4]+a[5])
    }
    
    //current_weather_detailed
    func ts2() -> String {
        return (a[2]+"\r\n"+(a[6].html2String))
    }
    
    //forcast1
    func ts3() -> String {
        return (a[7])
    }
    
    //forcast1_detailed
    func ts4() -> String {
        return (a[8])
    }
    
    //forcast2
    func ts5() -> String {
        return (a[9])
    }
    
    //forcast2_detailed
    func ts6() -> String {
        return (a[10])
    }
    
    //forcast3
    func ts7() -> String {
        return (a[11])
    }
    
    //forcast3_detailed
    func ts8() -> String {
        return (a[12])
    }
    
    //forcast4
    func ts9() -> String {
        return (a[13])
    }
    
    //forcast4_detailed
    func ts10() -> String {
        return (a[14])
    }
    
    //forcast5
    func ts11() -> String {
        return (a[15])
    }
    
    //forcast5_detailed
    func ts12() -> String {
        return (a[16])
    }
    
    //forcast6
    func ts13() -> String {
        return (a[17])
    }
    
    //forcast6_detailed
    func ts14() -> String {
        return (a[18])
    }
    
    //forcast7
    func ts15() -> String {
        return (a[19])
    }
    
    //forcast7_detailed
    func ts16() -> String {
        return (a[20])
    }
    
    //forcast8
    func ts17() -> String {
        return (a[21])
    }
    
    //forcast8_detailed
    func ts18() -> String {
        return (a[22])
    }
    
    //forcast9
    func ts19() -> String {
        return (a[23])
    }
    
    //forcast9_detailed
    func ts20() -> String {
        return (a[24])
    }
    
    //forcast10
    func ts21() -> String {
        return (a[25])
    }
    
    //forcast10_detailed
    func ts22() -> String {
        return (a[26])
    }
    
    //forcast11
    func ts23() -> String {
        return (a[27])
    }
    
    //forcast11_detailed
    func ts24() -> String {
        return (a[28])
    }
    
    //forcast12
    func ts25() -> String {
        return (a[29])
    }
    
    //forcast12_detailed
    func ts26() -> String {
        return (a[30])
    }
    
    //forcast13
    func ts27() -> String {
        return (a[31])
    }
    
    //forcast13_detailed
    func ts28() -> String {
        return (a[32])
    }
    
}
