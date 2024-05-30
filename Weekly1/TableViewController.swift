//
//  TableViewController.swift
//  Weekly1
//
//  Created by 백시훈 on 5/30/24.
//

import UIKit

class TableViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    let memberName: [String] = ["전가혜","백시훈","조수환","이선호","박성수"]
    let memberMbti: [String : String] = ["전가혜" : "INFP", "백시훈" : "INTJ", "조수환":"ISFP", "이선호":"ENFP", "박성수" : "ISTP"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
            let headerLabel = UILabel(frame: headerView.bounds)
            headerLabel.text = "5조 인원"
            headerLabel.textAlignment = .center
            headerView.addSubview(headerLabel)
            tableView.tableHeaderView = headerView
    }
    
}

extension TableViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memberName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memberCell", for: indexPath)
        cell.textLabel?.text = memberName[indexPath.row]
        cell.textLabel?.text! += "    ---->     MBTI : "
        cell.textLabel?.text! += memberMbti[memberName[indexPath.row]] ?? ""
        
        return cell
    }
    
    
}
