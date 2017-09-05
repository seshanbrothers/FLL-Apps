//
//  ViewController.swift
//  TrashTrek Scorer
//
//  Created by Sanjay Seshan on 8/26/15.
//  Copyright (c) 2015 EV3Lessons.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //     let url = NSURL (string: "http://www.sourcefreeze.com");
        //    let requestObj = NSURLRequest(URL: url!);
        //    webView.loadRequest(requestObj);
        let localfilePath = NSBundle.mainBundle().URLForResource("www/index", withExtension: "html");
        let myRequest = NSURLRequest(URL: localfilePath!);
        webView.loadRequest(myRequest);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        webView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    }
}

