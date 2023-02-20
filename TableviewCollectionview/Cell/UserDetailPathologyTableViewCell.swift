//
//  UserDetailPathologyTableViewCell.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 20/02/23.
//

import UIKit

class UserDetailPathologyTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailPathologyTableViewCell"

    lazy var userDetailPathologyView: UserDetailPathologyView = {
        let view = UserDetailPathologyView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.configConstraintsDescriptionCell()
        self.configBackGround()
        self.selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.contentView.addSubview(self.userDetailPathologyView)
    }
    
    public func setupCell(pathology: Pathology) {
        self.userDetailPathologyView.diseaseLabel.text = pathology.disease
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    private func configConstraintsDescriptionCell() {
        NSLayoutConstraint.activate([
            self.userDetailPathologyView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.userDetailPathologyView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            self.userDetailPathologyView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            self.userDetailPathologyView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ])
    }
}
