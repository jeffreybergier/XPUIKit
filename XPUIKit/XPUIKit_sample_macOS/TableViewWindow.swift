//
//  TableViewWindow.swift
//  XPUIKit_sample_macOS
//
//  Created by Jeffrey Bergier on 04/08/2018.
//

import XPUIKit

class TableViewControllerDelegate {
    func showPresentation() -> XPUIPresentation {
        let vc = XPUIListViewControllerCreator.createListViewController(with: self)
        return XPUIPresentationCreator.createPresentation(with: vc, delegate: self)
    }
}

extension TableViewControllerDelegate: XPUIPresentationDelegate {

}

extension TableViewControllerDelegate: XPUIViewControllerDelegate {
    func viewDidLoad(in controller: XPUIViewController) {
        NSLog("Table View Loaded")
    }

    func viewDidLayoutSubviews(in controller: XPUIViewController) {
        NSLog("Table View Layout")
    }
}

extension TableViewControllerDelegate: XPUIListViewControllerDelegate {

}
