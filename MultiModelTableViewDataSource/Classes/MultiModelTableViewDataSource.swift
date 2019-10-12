//
//  MultiModelTableViewDataSource.swift
//  MultiModelTableViewDataSource
//
//  Created by Elliot Schrock on 2/10/18.
//

import UIKit

open class MultiModelTableViewDataSource: NSObject, UITableViewDataSource {
    public var tableView: UITableView? {
        didSet {
            registerCells()
        }
    }
    public var sections: [MultiModelTableViewDataSourceSection]? {
        didSet {
            registerCells()
        }
    }
    
    open func registerCells() {
        if let sections = self.sections, let tableView = self.tableView {
            for section in sections {
                if let items = section.items {
                    for item in items {
                        let className = String(describing: item.cellClass())
                        let bundle = Bundle(for: item.cellClass())
                        if bundle.path(forResource: className, ofType: "nib") != nil {
                            tableView.register(UINib(nibName: className, bundle: bundle), forCellReuseIdentifier: item.cellIdentifier())
                        } else {
                            tableView.register(item.cellClass(), forCellReuseIdentifier: item.cellIdentifier())
                        }
                        
                    }
                }
            }
        }
    }
    
    // MARK: TableViewDataSource
    
    open func numberOfSections(in tableView: UITableView) -> Int {
        return sections?.count ?? 0
    }
    
    open func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let isSectionView = tableView.delegate?.tableView?(tableView, viewForHeaderInSection: section) != nil
        return isSectionView ? nil : sections?[section].title
    }
    
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections?[section].items?.count ?? 0
    }
    
    open func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let item = sections?[indexPath.section].items?[indexPath.row] {
            if let cell = tableView.dequeueReusableCell(withIdentifier: item.cellIdentifier()) {
                item.configureCell(cell)
                return cell
            }
        }
        return UITableViewCell()
    }
}
