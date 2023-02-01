//
//  PathologyVC.swift
//  TableviewCollectionview
//
//  Created by Fernanda Perovano on 27/12/22.
//

import UIKit

class PathologyVC: UIViewController {
    
    var pathologyScreen:PathologyScreen?
    
    override func loadView() {
        self.pathologyScreen = PathologyScreen()
        self.view = pathologyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        self.pathologyScreen?.configTableviewProtocols(delegate: self, datasource: self)
    }
    }

    extension PathologyVC:UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            return UITableViewCell()
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 140
        }
        
//        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            guard let navigation = self.navigationController else { return }
//            let vc = PathologyVC()
//            navigation.pushViewController(vc, animated: true)
//        }
    }

