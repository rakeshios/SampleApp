//
//  ViewController.swift
//  SampleSwiftWebview
//
//  Created by Rakesh Kumar on 11/2/15.
//  Copyright © 2015 Indegene. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webivew: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Loading a website URL
        /*
        let url = NSURL (string: "http://www.google.com");
        let requestObj = NSURLRequest(URL: url!);
        webivew.loadRequest(requestObj);
        */
        
        // Loading a local HTML File
        
        let localfilePath = NSBundle.mainBundle().URLForResource("index", withExtension: "html");
        let myRequest = NSURLRequest(URL: localfilePath!);
        webivew.loadRequest(myRequest);
    }
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool
    {
        print("shouldStartLoadWithRequest")
        return true;
    }
    
    func webViewDidStartLoad(webView: UIWebView)
    {
        print("webViewDidStartLoad")
    }
    
    func webViewDidFinishLoad(webView: UIWebView)
    {
        print("webViewDidFinishLoad")
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?)
    {
        print("didFailLoadWithError")
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

