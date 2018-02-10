//
//  MultiModelTableViewDataSourceItem.swift
//  MultiModelTableViewDataSource
//
//  Created by Elliot Schrock on 2/10/18.
//

import UIKit

protocol MultiModelTableViewDataSourceItem {
    func cellIdentifier() -> String
    func cellClass() -> UITableViewCell.Type
    func configureCell(_ cell: UITableViewCell)
}

class ConcreteMultiModelTableViewDataSourceItem<T>: MultiModelTableViewDataSourceItem where T: UITableViewCell {
    private let identifier: String
    
    init(identifier: String) {
        self.identifier = identifier
    }
    
    func cellIdentifier() -> String {
        return identifier
    }
    
    func cellClass() -> UITableViewCell.Type {
        return T.self
    }
    
    func configureCell(_ cell: UITableViewCell) {
        // NO OP: override me!
    }
}
