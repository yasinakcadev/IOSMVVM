//
//  Webservice.swift
//  IOSMVVM
//
//  Created by YASIN on 7.01.2023.
//

import Foundation

class Webservice {
    
    func downloadCurrincies(url: URL, completion: @escaping ([CryptoModel]?) -> Void) {
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let results = try JSONDecoder().decode([CryptoModel].self, from: data)
                    completion(results)
                }catch {
                    completion(nil)
                }
            }
        }.resume()
    }
}
