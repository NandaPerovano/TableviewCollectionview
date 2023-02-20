//
//  PathologyVC.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 27/12/22.
//

import UIKit

class PathologyVC: UIViewController {
    
    var pathologyScreen:PathologyScreen?
    var disease: [Pathology] = [
        Pathology(disease: "Cervicobraquialgia"),
        Pathology(disease: "Hérnia de disco"),
        Pathology(disease: "Espondilite anquilosante")
    ]
    
    override func loadView() {
        self.pathologyScreen = PathologyScreen()
        self.view = pathologyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       // view.backgroundColor = .white
        self.pathologyScreen?.configTableviewProtocols(delegate: self, datasource: self)
    }
    }

    extension PathologyVC:UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return disease.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: UserDetailPathologyTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailPathologyTableViewCell.identifier, for: indexPath) as? UserDetailPathologyTableViewCell
            cell?.setupCell(pathology: self.disease[indexPath.row])
            return cell ?? UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
        
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            guard let navigation = self.navigationController else { return }
//            let vc = PathologyVC()
//            navigation.pushViewController(vc, animated: true)
//        }
    }

