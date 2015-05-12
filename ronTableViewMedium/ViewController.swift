//
//  ViewController.swift
//  ronTableViewMedium
//
//  Created by Ronald Mourant on 4/27/15.
//  Copyright (c) 2015 Ron Mourant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var objects = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.objects.append("Apple Watch")
        self.objects.append("iPhone 6 Plus")
        self.objects.append("iPhone 6")
        self.objects.append("iPad Air 2")
        self.objects.append("iPad mini 3")
        self.objects.append("MacBook")
        self.objects.append("MacBook Air")
        self.objects.append("MacBook Pro")
        self.objects.append("iMac")
        self.objects.append("Mac Pro")
        self.objects.append("Mac mini")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.objects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let aCell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        aCell.titleLabel.text = self.objects[indexPath.row]
        
        let chevron = UIImage(named: "chevron.png")
        aCell.accessoryType = .DisclosureIndicator
        aCell.accessoryView = UIImageView(image: chevron!)
        return aCell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        self.performSegueWithIdentifier("showView", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (segue.identifier == "showView")
        {
            var upcoming: NewViewController = segue.destinationViewController as! NewViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow()!
            
            let titleString = self.objects[indexPath.row]
            
            upcoming.titleStringViaSegue = titleString
            
            self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

