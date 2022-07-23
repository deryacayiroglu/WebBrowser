//
//  TableViewController.swift
//  Project4
//
//  Created by Derya Çayıroğlu on 23.07.2022.
//

import UIKit

class TableViewController: UITableViewController {
    var websites = ["hackingwithswift.com", "apple.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Websites"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebView") as? ViewController{
            vc.selectedWebsite = websites[indexPath.row]
            vc.websites = websites
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
