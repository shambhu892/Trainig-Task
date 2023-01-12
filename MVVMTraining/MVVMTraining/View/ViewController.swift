//
//  ViewController.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var newsTableView: UITableView!
     var viewModel =  NewsViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.dataSource = self
        getNewsResponseApi()
    }

    func getNewsResponseApi() {
        self.viewModel.newsData { hitArray in
            if let hits = hitArray {
                self.viewModel.hitsArray = hits
                self.updateTable()
                
            }
        }
    }
    
    func updateTable() {
        DispatchQueue.main.async {
            self.newsTableView.reloadData()
        }
    }
}


