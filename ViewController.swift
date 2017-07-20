//
//  ViewController.swift
//  TableViewSection
//
//  Created by OMNIWYSE on 7/20/17.
//  Copyright © 2017 myschool. All rights reserved.
//

import UIKit
class SelectionModel{
    var SectionName = ""
    var Rowdata = [""]
}
var selectionarray = [SelectionModel]()
func getArray() -> [SelectionModel]
{
    let selobj = SelectionModel()
    selobj.SectionName = "class1"
    selobj.Rowdata = ["1"]
    selectionarray.append(selobj)
    return selectionarray
}



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
    cell?.backgroundColor = UIColor.black
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> Int {
        
         return selectionarray.count
        //return SelectionModel.SectionName
    }
    

}

