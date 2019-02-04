//
//  TaskTableViewController.swift
//  Runner
//
//  Created by Eric Castronovo on 2/4/19.
//  Copyright © 2019 Runner. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    
    //MARK: Properties
    @IBOutlet weak var hamburgerMenu: UIImageView!
    @IBOutlet weak var filterButton: UIButton!
    @IBOutlet weak var newTask: UIImageView!
    
    var tasks = [Task]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the sample data.
        filterButton.setTitle("Filter", for: .normal)
        hamburgerMenu.image = UIImage(named: "task1")
        newTask.image = UIImage(named: "task1")
        loadSampleTasks()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TaskTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TaskTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TaskTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let task = tasks[indexPath.row]

        cell.nameLabel.text = task.nameLabel
        cell.taskName.text = task.taskName
        cell.userPhoto.image = task.userPhoto
        cell.likeButton.setTitle("Like", for: .normal)
        cell.messageButton.setTitle("Message", for: .normal)
        
        return cell
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: Private Methods
    
    private func loadSampleTasks() {
        
        let photo1 = UIImage(named: "task1")
        let photo2 = UIImage(named: "task1")
        let photo3 = UIImage(named: "task1")
        let photo4 = UIImage(named: "task1")
        
        
        guard let task1 = Task(nameLabel: "Eric Castronovo", taskName: "Task One", userPhoto: photo1) else {
            fatalError("Unable to instantiate task1")
        }
        
        guard let task2 = Task(nameLabel: "Dimple Maniar", taskName: "Task Two", userPhoto: photo2) else {
            fatalError("Unable to instantiate task2")
        }
        
        guard let task3 = Task(nameLabel: "Aleisha Nelson", taskName: "Task Three", userPhoto: photo3) else {
            fatalError("Unable to instantiate task3")
        }
        
        guard let task4 = Task(nameLabel: "Danish Sharma", taskName: "Task Four", userPhoto: photo4) else {
            fatalError("Unable to instantiate task4")
        }
        
        tasks += [task1, task2, task3, task4]
        tasks += [task1, task2, task3, task4]
        tasks += [task1, task2, task3, task4]
    }
}
