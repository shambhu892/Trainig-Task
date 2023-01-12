//
//  NewsModel.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

struct NewsModel:Hashable,Decodable {
    let hits: [Hit]?
    
}

struct Hit:Hashable, Decodable {
    let title: String?
    let url: String?
    let points: Int?
}
