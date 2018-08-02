//
//  MainWindowPresentationDelegate.swift
//  XPUIKit_sample_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//
//  MIT License
//
//  Copyright (c) 2018 Jeffrey Bergier
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//

import XPUIKit

class MainWindowPresentationDelegate {

    let blueSubview = XPUIViewCreator.createView(with: nil)
}

extension MainWindowPresentationDelegate: XPUIPresentationDelegate {
    func provideViewController(for presentation: XPUIPresentation) -> XPUIViewController {
        let vc = XPUIViewControllerCreator.createViewController(with: self)
        return vc
    }
}

extension MainWindowPresentationDelegate: XPUIViewControllerDelegate {
    func provideView(for controller: XPUIViewController) -> XPUIView {
        return XPUIViewCreator.createView(with: self)
    }
    func viewDidLoad(in controller: XPUIViewController) {
        print("ViewController: ViewDidLoad")
    }
    func viewDidLayoutSubviews(in controller: XPUIViewController) {
        print("ViewController: Layout")
    }
}

extension MainWindowPresentationDelegate: XPUIViewDelegate {
    func viewDidMove(toPresentation view: XPUIView) {
        print("View: viewDidMoveToPresentation")
        view.xp_layer.backgroundColor = CGColor(red: 1, green: 0, blue: 0, alpha: 1)
        view.xp_addSubview(self.blueSubview)
        self.blueSubview.xp_layer.backgroundColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
        view.xp_layoutGuide.leadingAnchor.constraint(equalTo: self.blueSubview.xp_layoutGuide.leadingAnchor, constant: 100).isActive = true
        view.xp_layoutGuide.trailingAnchor.constraint(equalTo: self.blueSubview.xp_layoutGuide.trailingAnchor, constant: 100).isActive = true
        view.xp_layoutGuide.topAnchor.constraint(equalTo: self.blueSubview.xp_layoutGuide.topAnchor, constant: 100).isActive = true
        view.xp_layoutGuide.bottomAnchor.constraint(equalTo: self.blueSubview.xp_layoutGuide.bottomAnchor, constant: 100).isActive = true
    }

    func viewDidLayout(_ view: XPUIView) {
        print("View: Layout")
    }
}
