//
//  ChartViewModel.swift
//  EXZi
//
//  Created by Anton Gorb on 16.02.2024.
//

import Foundation
import Observation

@Observable
final class ChartViewModel {
    
    var ordersItems: [OrderBookItem] = []
    var chartItems: [ChartItem] = []
    
    init() {
        loadOrderItems()
        loadChartItems()
    }
    
    func loadOrderItems() {
        let url = URL(string: "https://socket.exzi.com/book/list?pair_id=1041&buy=1&sell=1")!
        
        loadData(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                guard let ordersListResponse = try? JSONDecoder().decode(OrderBookListResponse.self, from: data) else { return }
                
                self.ordersItems = ordersListResponse.buy
                    .enumerated()
                    .map { index, item in
                        return OrderBookItem(id: index, buy: item, sell: ordersListResponse.sell[index])
                    }
            case .failure(let error):
                print(error)
            }
        }
    }
}

private extension ChartViewModel {
    
    func loadChartItems() {
        let url = URL(string: "https://socket.exzi.com/graph/hist?t=BTCUSDT&r=D&limit=5000&end=1705363200")!
        
        loadData(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                guard let chartItemsResponse = try? JSONDecoder().decode([ChartItemResponse].self, from: data) else { return }
                
                self.chartItems = chartItemsResponse.enumerated().map { index, item in
                    return ChartItem(
                        id: index,
                        close_f: item.close_f,
                        close: item.close,
                        high_f: item.high_f,
                        high: item.high,
                        low_f: item.low_f,
                        low: item.low,
                        open_f: item.open_f,
                        open: item.open,
                        volume_f: item.volume_f,
                        volume: item.volume,
                        time: item.time)
                }.sorted(by: { $0.time < $1.time })
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func loadData(url: URL, completion: @escaping (Result<Data, Error>) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                error.map { completion(.failure($0)) }
                return
            }
            
            completion(.success(data))
        }.resume()
    }
}
