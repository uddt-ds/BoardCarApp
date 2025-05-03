//
//  TabBarController.swift
//  BoardCarApp
//
//  Created by Lee on 5/3/25.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {

    let rentVC = RentVC()
    let shareVC = ShareVC()
    let myPageVC = MyPageVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
    }

    private func configureController() {
        rentVC.tabBarItem = UITabBarItem(title: "홈", image: UIImage(named: "noneSelectHomeIcon"), selectedImage: UIImage(named: "selectedHomeIcon"))
        shareVC.tabBarItem = UITabBarItem(title: "킥보드 공유", image: UIImage(named: "nonSelectBoardIcon"), selectedImage: UIImage(named: "selectedBoardIcon"))
        myPageVC.tabBarItem = UITabBarItem(title: "마이페이지", image: UIImage(named: "noneSelectMyPageIcon"), selectedImage: UIImage(named: "selectedMyPageIcon"))

        viewControllers = [rentVC, shareVC, myPageVC]

        viewControllers?.forEach {
            $0.tabBarItem.imageInsets = UIEdgeInsets(top: 10, left: 5, bottom: 5, right: 5)
        }

        tabBar.tintColor = .purple
        tabBar.backgroundColor = .white
    }

}
