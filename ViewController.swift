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
    var DoneBut:UIButton!
    var label:UILabel!
    
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
       func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vw = UIView()
        if section == 0{
            let DoneBut: UIButton = UIButton(frame: CGRect(x: 300, y: 10, width: 50, height: 50))
            DoneBut.setTitle("Done", for: .normal)
            DoneBut.backgroundColor = UIColor.black
            DoneBut.tag = section
            DoneBut.addTarget(self, action: "action:", for: UIControlEvents.touchUpInside)
              let  label = UILabel(frame:CGRect(x: 50, y: 10, width: 50, height: 50))
            label.textColor = UIColor.red
            label.text = "hi"

            vw.backgroundColor = UIColor.cyan
            vw.addSubview(DoneBut)
            vw.addSubview(label)
        }
            
       else if section == 1{
            vw.backgroundColor = UIColor.orange
        }
        else{
            vw.backgroundColor = UIColor.red
        }
        vw.frame = CGRect(x: 0, y: 0, width:self.tableview.frame.width, height: 50
        )
return vw
}
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60.0
    }
    func call(){
                  }
    func action(sender:UIButton)
    {
        print("cliked")
    }

}
