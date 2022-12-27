//
//  UserDetailTableViewCell.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 04/12/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    static let identifier: String = "UserDetailTableViewCell"

    lazy var userDetailView: UserDetailView = {
        let view = UserDetailView()
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
        self.contentView.addSubview(self.userDetailView)
    }
    
    public func setupCell(data: DataUser) {
        self.userDetailView.articulationImageView.image = UIImage(named: data.articulationImage)
        self.userDetailView.articulationLabel.text = data.articulation
    }
    
    private func configBackGround() {
        self.backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1.0)
    }
    
    private func configConstraintsDescriptionCell() {
        NSLayoutConstraint.activate([
            self.userDetailView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.userDetailView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            self.userDetailView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor),
            self.userDetailView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        ])
    }
}
