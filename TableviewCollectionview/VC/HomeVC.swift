//
//  HomeVC.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 04/12/22.
//

import UIKit

class HomeVC: UIViewController {
    
    var homeScreen:HomeScreen?
    var data:[DataUser] = [
        DataUser(articulationImage: "colunaCervical", articulation: "COLUNA CERVICAL"),
        DataUser(articulationImage: "colunaLombar", articulation: "COLUNA LOMBAR"),
        DataUser(articulationImage: "ombro", articulation: "OMBRO"),
        DataUser(articulationImage: "cotovelo", articulation: "COTOVELO"),
        DataUser(articulationImage: "punho", articulation: "PUNHO E MÃ0"),
        DataUser(articulationImage: "quadril", articulation: "QUADRIL"),
        DataUser(articulationImage: "joelho", articulation: "JOELHO"),
        DataUser(articulationImage: "tornozelo", articulation: "TORNOZELO E PÉ"),
    ]
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableviewProtocols(delegate: self, datasource: self)
    }
}

extension HomeVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setupCell(data: self.data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let navigation = self.navigationController else { return }
        let vc = PathologyVC()
        navigation.pushViewController(vc, animated: true)
    }
}
