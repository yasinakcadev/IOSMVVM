//
//  File.swift
//  IOSMVVM
//
//  Created by YASIN on 7.01.2023.
//

import Foundation

struct CryptoListViewModel {
    let cryptoListViewModel: [CryptoModel]
    
    func numberOfRowsInSection() -> Int {
        return self.cryptoListViewModel.count
    }
    
    func cellForRowAtIndex(index: Int) -> CryptoViewModel {
        let crypto = self.cryptoListViewModel[index]
        return CryptoViewModel(cryptoViewModel: crypto)
    }
}

struct CryptoViewModel {
    let cryptoViewModel: CryptoModel
    
    var currency: String {
        return self.cryptoViewModel.currency
    }
    
    var price: String {
        return self.cryptoViewModel.price
    }
}
