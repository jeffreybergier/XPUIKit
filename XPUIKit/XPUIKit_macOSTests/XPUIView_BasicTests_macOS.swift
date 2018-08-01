//
//  TestTest.swift
//  XPUIKit
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

import AppKit;
import XPUIKit
import XCTest

class XPUIView_BasicTests: XCTestCase {

    var myView: XPUIViewContext!
    var parentWindowController: NSWindowController!
    var parentViewController: NSViewController!

    override func setUp() {
        super.setUp()
        self.parentViewController = NSViewController()
        self.parentViewController.view = NSView()
        self.parentWindowController = NSWindowController()
        self.parentWindowController.contentViewController = self.parentViewController
        let view: NSView & XPUIViewContext = XPUIView(frame: NSRect(x: 10, y: 10, width: 100, height: 100))
        self.myView = view
        self.parentViewController.view.addSubview(view)
        self.parentWindowController.showWindow(self)
    }

    func testViewLayoutGuide() {
        let view: XPUIViewContext = XPUIView()
        let color = view.xp_safeAreaLayoutGuide
        print(color)
        print("Done")
    }
}
