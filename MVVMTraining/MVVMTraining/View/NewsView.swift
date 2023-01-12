//
//  NewsView.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import SwiftUI

struct NewsView: View {
    @StateObject private var viewModel = NewsViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.hitsArray!,id: \.self) { newsData in
                    HStack {
                        Text("20")
                        Text(newsData.title!)
                    }
                }
            }
            .onAppear{
                self.viewModel.newsData { hitArray in
                    if let hits = hitArray {
                        self.viewModel.hitsArray = hits
                    }
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
