//
//  PlannerViewController.swift
//  Classes
//
//  Created by Anthony Lockett on 3/10/15.
//  Copyright (c) 2015 LUNR. All rights reserved.
//

import UIKit


var semesters = [String]()

class PlannerViewController: UIViewController, UITableViewDelegate
{
    
    @IBOutlet var semesterTextField: UITextField!
    
    
    @IBAction func addSemester(sender: AnyObject) {
        
        semesters.append(semesterTextField.text)
        
        semesterTextField.text = ""
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return semesters.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
    
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        cell.textLabel?.text = semesters[indexPath.row]
        
        return cell
        
    }
    
    
}
