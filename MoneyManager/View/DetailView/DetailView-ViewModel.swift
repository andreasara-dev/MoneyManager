//
//  DetailView-ViewModel.swift
//  MoneyManager
//
//  Created by andreasara-dev on 09/07/23.
//

import Foundation

extension DetailView {
    @MainActor class ViewModel: ObservableObject {
        let currency = Locale.current.currencySymbol ?? "$"
        let transactionDateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd/MM/yyyy"
            return formatter
        }()
    }
}
