//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by Elliot Glaze on 12/03/2019.
//  Copyright © 2019 Elliot Glaze. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    //MARK: Properties
    let cellView:UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let dayLabel:UILabel = {
        let label = UILabel()
        label.text = "Day 1"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    //MARK: Setup
    func setupView() {
        addSubview(cellView)
        cellView.addSubview(dayLabel)
        selectionStyle = .none
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            cellView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            cellView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            //UILabel inside UIView
            dayLabel.heightAnchor.constraint(equalToConstant: 200),
            dayLabel.widthAnchor.constraint(equalToConstant: 200),
            dayLabel.centerYAnchor.constraint(equalTo: cellView.centerYAnchor),
            dayLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 20)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
