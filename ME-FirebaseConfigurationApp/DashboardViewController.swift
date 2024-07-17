//
//  DashboardViewController.swift
//  ME-FirebaseConfigurationApp
//
//  Created by Vibhash Kumar on 10/07/24.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var titleLbl: UILabel!
    
    @IBAction func fatalCrash(_ sender: UIButton) {
       fatalError("Induced carsh on \(Date()) on env \(environment)")
    }
    
    var environment: String {
        let env = Bundle.main.infoDictionary!["ENVIRONMENT"] as? String ?? ""
        return env
    }
    var hostURL: String {
        let env = Bundle.main.infoDictionary!["HOST_URI"] as? String ?? ""
        return env
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = environment
        self.titleLbl.text = hostURL
        // Do any additional setup after loading the view.
    }
    
    
}
