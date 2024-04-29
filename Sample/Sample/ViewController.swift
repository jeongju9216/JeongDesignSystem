//
//  ViewController.swift
//  Sample
//
//  Created by 유정주 on 4/16/24.
//

import UIKit
import JeongDesignSystem

final class ViewController: UIViewController {

    // MARK: - UI
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "JeongDesignSystem"
        
        return label
    }()
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.backgroundColor = .white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Constant.CellIdentifier)
        
        return tableView
    }()
    
    
    // MARK: - Attribute
    
    private let components: [String] = [
        "JNButton"
    ]
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Test.greeting()
        
        setUpAttributes()
        setUpSubviews()
        setUpConstraints()
    }
    
    
    // MARK: - Setup
    
    private func setUpAttributes() {
        view.backgroundColor = .white
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setUpSubviews() {
        [
            titleLabel,
            tableView
        ].forEach {
            view.addSubview($0)
        }
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Metric.TitleLabel.topOffset),
            
            tableView.topAnchor.constraint(equalTo: titleLabel.safeAreaLayoutGuide.bottomAnchor, constant: Metric.TableView.topOffset),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}


// MARK: - UITableViewDataSource

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        components.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constant.CellIdentifier, for: indexPath)
        cell.textLabel?.text = components[indexPath.row]
        return cell
    }
}


// MARK: - Constant

private extension ViewController {
    
    enum Constant {
        
        static let CellIdentifier = "Cell"
    }
    
    enum Metric {
        
        enum TitleLabel {
            
            static let topOffset = 40.0
        }
        
        enum TableView {
            
            static let topOffset = 20.0
        }
    }
}

