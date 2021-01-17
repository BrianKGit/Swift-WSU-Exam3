//
//  ViewController.swift
//  Exam3
//
//  Created by Brian Klein on 12/9/19.
//  Copyright © 2019 Brian Klein All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {

    var dateTupleArray: [(String, Int)] = [("December", 2019), ("January", 2020),  ("February", 2020),("March", 2020),("April", 2020),("May", 2020),("June", 2020),("July", 2020),("August", 2020),("September", 2020),("October", 2020),("November", 2020)]
    
    let myTableView: UITableView = UITableView()
    let MONTHCELL: String = "MonthCell"
    
    var winterCounter: Int = 0
    var springCounter: Int = 0
    var summerCounter: Int = 0
    var fallCounter: Int = 0
    var selectedMonth: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        //view background color
        view.backgroundColor = .purple
        
        //create table view and add it to the subview
        myTableView.frame = CGRect(x: (view.frame.width/2)-150, y: 125, width: 300, height: 325)
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.backgroundColor = UIColor.magenta
        view.addSubview(myTableView)
        
    }//end viewDidLoad

    func numberOfSections(in activityTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: MONTHCELL) ?? UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: MONTHCELL)
        let monthTuple: (String, Int)
        monthTuple = dateTupleArray[indexPath.row]
        cell.textLabel?.text = monthTuple.0.description + monthTuple.1.description
        cell.backgroundColor = .magenta
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 40, width: view.frame.width, height: 20))
        label.text = "Brian Klein"
        label.backgroundColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        return label
    }
    
    // UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        //selection is the number of the row
        let selection: Int = indexPath.row
            
        //if a winter month is selected from the table view
        if (dateTupleArray[selection].0 == "December" || dateTupleArray[selection].0 == "January" || dateTupleArray[selection].0 == "February") {
            winterCounter += 1
            selectedMonth = "Winter"
            print(winterCounter)
            if(winterCounter > 2) {
                let alert: UIAlertController = UIAlertController(title: "\(selectedMonth) is the selected month.", message: "Would you like to reset the season counters now?", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Reset Counters", style: UIAlertAction.Style.default, handler:
                    {(action: UIAlertAction!) -> Void in
                        self.winterCounter = 0
                        self.springCounter = 0
                        self.summerCounter = 0
                        self.fallCounter = 0
                }))
                alert.addAction(UIAlertAction(title: "Ignore", style: UIAlertAction.Style.default, handler:
                    {(action: UIAlertAction!) -> Void in
                        
                }))
                present(alert, animated: true, completion:
                    {() -> Void in

                })
            }//end if
        
        //if a spring month is selected from the table view
        } else if (dateTupleArray[selection].0 == "March" || dateTupleArray[selection].0 == "April" || dateTupleArray[selection].0 == "May") {
            springCounter += 1
            selectedMonth = "Spring"
            print(springCounter)
            if(springCounter > 2) {
                let alert: UIAlertController = UIAlertController(title: "\(selectedMonth) is the selected month.", message: "Would you like to reset the season counters now?", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Reset Counters", style: UIAlertAction.Style.default, handler:
                    {(action: UIAlertAction!) -> Void in
                        self.winterCounter = 0
                        self.springCounter = 0
                        self.summerCounter = 0
                        self.fallCounter = 0
                }))
                alert.addAction(UIAlertAction(title: "Ignore", style: UIAlertAction.Style.default, handler:
                    {(action: UIAlertAction!) -> Void in
                        
                }))
                present(alert, animated: true, completion:
                    {() -> Void in

                })
            }//end if
        
        //if a summer month is selected from the table view
        } else if (dateTupleArray[selection].0 == "June" || dateTupleArray[selection].0 == "July" || dateTupleArray[selection].0 == "August") {
                summerCounter += 1
                selectedMonth = "Summer"
                if(summerCounter > 2) {
                    let alert: UIAlertController = UIAlertController(title: "\(selectedMonth) is the selected month.", message: "Would you like to reset the season counters now?", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "Reset Counters", style: UIAlertAction.Style.default, handler:
                        {(action: UIAlertAction!) -> Void in
                            self.winterCounter = 0
                            self.springCounter = 0
                            self.summerCounter = 0
                            self.fallCounter = 0
                    }))
                    alert.addAction(UIAlertAction(title: "Ignore", style: UIAlertAction.Style.default, handler:
                        {(action: UIAlertAction!) -> Void in
                            
                    }))
                    present(alert, animated: true, completion:
                        {() -> Void in

                    })
                }//end if

        //if a fall month is selected from the table view
        } else if (dateTupleArray[selection].0 == "September" || dateTupleArray[selection].0 == "October" || dateTupleArray[selection].0 == "November") {
            fallCounter += 1
            selectedMonth = "Fall"
            if(fallCounter > 2) {
                let alert: UIAlertController = UIAlertController(title: "\(selectedMonth) is the selected month.", message: "Would you like to reset the season counters now?", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Reset Counters", style: UIAlertAction.Style.default, handler:
                    {(action: UIAlertAction!) -> Void in
                        self.winterCounter = 0
                        self.springCounter = 0
                        self.summerCounter = 0
                        self.fallCounter = 0
                }))
                alert.addAction(UIAlertAction(title: "Ignore", style: UIAlertAction.Style.default, handler:
                    {(action: UIAlertAction!) -> Void in
                        
                }))
                present(alert, animated: true, completion:
                    {() -> Void in

                })

            }//end if
        }//end if/else statement
    }
}

