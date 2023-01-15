//
//  MainViewController.swift
//  Movie_App
//
//  Created by Ertugrul Berber on 15.01.2023.
//

import UIKit

class MainViewController: UIViewController {
    

    //IBOutlets:
    @IBOutlet weak var tableView: UITableView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .red
        
        setupTableView()
    }


}
