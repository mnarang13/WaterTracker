//
//  TableViewController.swift
//  GWC Capstone
//
//  Created by Spence on 8/2/18.
//  Copyright © 2018 Maya and Delaney. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    let context1 = (UIApplication.shared.delegate as!AppDelegate).persistentContainer.viewContext
    @IBOutlet var tableView2: UITableView!
    
    var items: [Task] = []
    
    func getData() {
        do {
            items = try context1.fetch(Task.fetchRequest())
            print(items)
            DispatchQueue.main.async {
                self.tableView2.reloadData()
            }
        }
        catch {
            print("Couldn't fetch Data")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView2.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = items[indexPath.row].taskName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .default, title: "Delete") { (action, indexPath) in
            let task = self.items[indexPath.row]
            self.context1.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            self.items.remove(at: indexPath.row)
            self.tableView2.deleteRows(at: [indexPath], with: .fade)
        }
        return[delete]
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}
