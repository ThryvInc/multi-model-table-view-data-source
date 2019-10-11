import UIKit
import PlaygroundSupport
import MultiModelTableViewDataSource

class NumberItem: ConcreteMultiModelTableViewDataSourceItem<UITableViewCell> {
    let value: Int
    init(identifier: String = "cell", value: Int) {
        self.value = value
        super.init(identifier: identifier)
    }
    
    override func configureCell(_ cell: UITableViewCell) {
        cell.textLabel?.text = "\(value)"
    }
}

open class MyViewController : UIViewController {
    var tableView: UITableView!
    
    var numbers: [Int] = [Int]()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...17 {
            numbers.append(i)
        }
        
        let items = numbers.map { NumberItem(value: $0) }
        let section = MultiModelTableViewDataSourceSection()
        section.items = items
        
        let dataSource = MultiModelTableViewDataSource()
        dataSource.sections = [section]
        dataSource.tableView = tableView
        tableView.dataSource = dataSource
    }
    
    // MARK: view stuff
    
    open override func loadView() {
        view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        tableView = UITableView(frame: view.frame, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0)
            ])
    }
}

PlaygroundPage.current.liveView = MyViewController()
PlaygroundPage.current.needsIndefiniteExecution = true

