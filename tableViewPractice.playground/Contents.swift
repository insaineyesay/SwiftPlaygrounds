//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class MyViewController : UITableViewController {
    var cellId = "cellId"
    
    var reasons = ["the labs are great", "the sessions teach new things", "the people are awesome", "the keynote rocks", "I must hug Joe Groff"]
    
    override func viewDidLoad() {
        title = "Stupid TableView Practice"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reasons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
            cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if cell == nil {
            // none to dequeue – make a new one
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
            cell?.accessoryType = .disclosureIndicator
        }
        
        let reason = reasons[indexPath.row]
        cell.detailTextLabel?.text = "I want to attend because \(reason)"
        cell.textLabel?.text = "Reason #\(indexPath.row + 1)"
        
        return cell
    }

}

let master = MyViewController()
let nav = UINavigationController(rootViewController: master)

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = nav
