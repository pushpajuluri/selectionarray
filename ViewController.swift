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
    
    @IBOutlet weak var tableview: UITableView!
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
       func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        vw.backgroundColor = UIColor.red
        vw.frame = CGRect(x: tableview.frame.width, y: 61, width:tableview.frame.width, height: tableview.frame.height)
return vw
}
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 61.0
    }

}
