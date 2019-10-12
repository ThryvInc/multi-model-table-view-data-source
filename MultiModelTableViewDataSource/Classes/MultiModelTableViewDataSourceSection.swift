//
//  MultiModelTableViewDataSourceSection.swift
//  MultiModelTableViewDataSource
//
//  Created by Elliot Schrock on 2/10/18.
//

import UIKit

open class MultiModelTableViewDataSourceSection: NSObject {
    open var title: String?
    open var items: [MultiModelTableViewDataSourceItem]?
}

public func itemsToSection(items: [MultiModelTableViewDataSourceItem]) -> MultiModelTableViewDataSourceSection {
    let section = MultiModelTableViewDataSourceSection()
    section.items = items
    return section
}

public func sectionsToDataSource(sections: [MultiModelTableViewDataSourceSection]?) -> MultiModelTableViewDataSource {
    let ds = MultiModelTableViewDataSource()
    ds.sections = sections
    return ds
}
