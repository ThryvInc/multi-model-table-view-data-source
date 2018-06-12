//
//  MultiModelTableViewDataSourceItem.swift
//  MultiModelTableViewDataSource
//
//  Created by Elliot Schrock on 2/10/18.
//

import UIKit

public protocol MultiModelTableViewDataSourceItem {
    func cellIdentifier() -> String
    func cellClass() -> UITableViewCell.Type
    func configureCell(_ cell: UITableViewCell)
}

open class ConcreteMultiModelTableViewDataSourceItem<T>: MultiModelTableViewDataSourceItem where T: UITableViewCell {
    private let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
    
    open func cellIdentifier() -> String {
        return identifier
    }
    
    open func cellClass() -> UITableViewCell.Type {
        return T.self
    }
    
    open func configureCell(_ cell: UITableViewCell) {
        // NO OP: override me!
    }
}
