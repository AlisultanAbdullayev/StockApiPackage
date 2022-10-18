//
//  File.swift
//  
//
//  Created by Alisultan Abdullah on 07.10.2022.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
    
    static let stocksAPI = StocksAPI()
    
    static func main() async {
        do {
//            let quotes = try await stocksAPI.fetchQuotes(symbols: "AAPL,MSFT,GOOGL,TSLA")
//            print(quotes)
            
//            let tickers = try await stocksAPI.searchTickers(query: "AAPL")
//            print(tickers)
            
            let chart = try await stocksAPI.fetchChartData(symbol: "AAPL", range: .oneDay)
            print(chart ?? "")
            
        } catch {
            print(error.localizedDescription)
        }
    }
    
}
