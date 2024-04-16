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
    }
    
    private func setUpSubviews() {
        view.addSubview(titleLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Metric.TitleLabel.topOffset)
        ])
    }
}


// MARK: - Constant

private extension ViewController {
    
    enum Metric {
        
        enum TitleLabel {
            
            static let topOffset = 40.0
        }
    }
}

