//
//  HttpUtility.swift
//  MVVMTraining
//
//  Created by BKS-GGS on 11/01/23.
//

import Foundation

struct HttpUtility {
   
    static let shared = HttpUtility()
    public var customJsonDecoder : JSONDecoder? = nil

     init(){}
    
    func getApiData<T:Decodable>(urlRequest: URL, responseType:T.Type, completionHandler:@escaping(_ result:T) -> Void)
    {
        
        var urlRequest = self.createUrlRequest(requestUrl: urlRequest)
        urlRequest.httpMethod = "GET"
        
        
        URLSession.shared.dataTask(with: urlRequest) { (dataResponse, urlResponse, error) in
            
            if(error == nil && dataResponse != nil && dataResponse?.count != nil)
            {
                
                let newsModelData = decodeJsonResponse(data: dataResponse!, responseType: T.self)
                completionHandler(newsModelData!)
                
            }
        }.resume()
        
    }
    
     func createUrlRequest(requestUrl: URL) -> URLRequest
    {
        let urlRequest = URLRequest(url: requestUrl)
       
        return urlRequest
    }

     func decodeJsonResponse<T: Decodable>(data: Data, responseType: T.Type) -> T?
    {
        let decoder = createJsonDecoder()
        do {
            return try decoder.decode(responseType, from: data)
        }catch let error {
            debugPrint("deocding error =>\(error.localizedDescription)")
        }
        return nil
    }
    
     func createJsonDecoder() -> JSONDecoder
    {
        let decoder =  customJsonDecoder != nil ? customJsonDecoder! : JSONDecoder()
        if(customJsonDecoder == nil) {
            decoder.dateDecodingStrategy = .iso8601
        }
        return decoder
    }
    
}
