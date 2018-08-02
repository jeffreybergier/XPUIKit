//
//  MainWindowPresentationDelegate.swift
//  XPUIKit_sample_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

import XPUIKit

class MainWindowPresentationDelegate { }

extension MainWindowPresentationDelegate: XPUIPresentationDelegate {
    func provideViewController(forPresentation presentation: Any) -> XPUIViewController {
        let vc = XPUIViewControllerCreator.createViewController(with: self)
        return vc
    }
}

extension MainWindowPresentationDelegate: XPUIViewControllerDelegate {
    func viewDidLoad(forViewController controller: Any) {
        //
    }

    func provideView(forViewController controller: Any) -> Any! {
        fatalError()
    }
}
