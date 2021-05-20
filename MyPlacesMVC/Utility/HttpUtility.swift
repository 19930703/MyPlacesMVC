//
//  HttpUtility.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import Foundation
struct HttpUtility
{
    static let shared = HttpUtility()
    private init(){}

    func performDataTask<T:Decodable>(urlRequest: URLRequest, resultType: T.Type, completionHandler:@escaping(_ result: T?)-> Void){
        
        URLSession.shared.dataTask(with: urlRequest) { (responseData, httpUrlResponse, error) in
            if(error == nil && responseData != nil && responseData?.count != 0)
            {
                let decoder = JSONDecoder()
                do {
                    let result = try decoder.decode(T.self, from: responseData!)
                    _=completionHandler(result)
                }
                catch let error{
                    debugPrint("error occured while decoding = \(error.localizedDescription)")
                }
            }

        }.resume()
    }
}
