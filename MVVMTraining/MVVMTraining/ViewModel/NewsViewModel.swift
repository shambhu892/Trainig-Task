//
//  NewsViewModel.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation


class NewsViewModel: ObservableObject {
    @Published var hitsArray:[Hit]? = []
func newsData(completion:@escaping([Hit]?) -> Void)
    {
        let newsResource = NewsResource()
        newsResource.getNewsData { (newsApiResponse) in
            self.hitsArray = newsApiResponse?.hits
            completion(self.hitsArray)
        }
    }
    
    func getParseData(data:Data) {
        
        do{
            let hackerList = try JSONDecoder().decode(NewsModel.self, from: data)
            
        } catch{
            print(error)
        }
    }
    
    func getTitle(index:Int) -> String? {
        return hitsArray?[index].title
    }
    func getPoints(index:Int) -> String? {
        return hitsArray?[index].points?.codingKey.stringValue
    }
    func getCount() -> Int? {
       
        return hitsArray?.count
    }
}
