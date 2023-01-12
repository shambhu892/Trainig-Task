//
//  VCEXtension.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation
import UIKit

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let hitsArray = self.viewModel.getCount() else { return 0 }
        return hitsArray
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsTableViewCell else {
            return UITableViewCell()
        }
        cell.fetchData(title:self.viewModel.getTitle(index: indexPath.row) ?? "", point:self.viewModel.getPoints(index: indexPath.row) ?? "")
        
        return cell
        }
    
    }
    
