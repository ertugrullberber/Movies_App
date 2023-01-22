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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    //Variables:
    var cellDataSources: [MovieTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func configView() {
        self.title = "Main View"
        self.view.backgroundColor = .systemBackground
        
        setupTableView()
    }
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        viewModel.cellDataSource.bind { [weak self] movie in
            guard let self = self,let movie = movie else {
                return
            }
            self.cellDataSources = movie
            self.reloadTableView()
        }
    }
    
    func openDetails(movieId: Int) {
            guard let movie = viewModel.retriveMovie(withId: movieId) else {
                return
            }
            
            DispatchQueue.main.async {
                let detailsViewModel = DetailsMovieViewModel(movie: movie)
                let controller = DetailsMovieViewController(viewModel: detailsViewModel)
                self.navigationController?.pushViewController(controller, animated: true)
            }
        }
}
