//
//  UserDataViewController.swift
//  UserListApp(TableView)
//
//  Created by 中村泰輔 on 2019/08/09.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class UserDataViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var user : UserData?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = user?.name
        infoLabel.text = user?.info
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
