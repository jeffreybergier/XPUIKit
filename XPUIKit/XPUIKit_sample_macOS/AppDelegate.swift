//
//  AppDelegate.swift
//  XPUIKit_sample_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

import AppKit
import XPUIKit

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    private var windowController: XPUIPresentation!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let delegate = MainWindowPresentationDelegate()
        self.windowController = XPUIPresentationCreator.createPresentation(with: delegate)
    }
}

