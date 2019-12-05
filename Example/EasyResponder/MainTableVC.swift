//
//  MainTableVC.swift
//  
//
//  Created by 许允是 on 2019/12/5.
//

import UIKit

class MainTableVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            let vc = ButtonVC()
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = TextfieldVC()
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = TextViewVC()
            navigationController?.pushViewController(vc, animated: true)
        default:
            return
        }
    }
}
