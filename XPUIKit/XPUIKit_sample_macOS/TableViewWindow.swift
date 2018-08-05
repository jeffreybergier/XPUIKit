//
//  TableViewWindow.swift
//  XPUIKit_sample_macOS
//
//  Created by Jeffrey Bergier on 04/08/2018.
//

import XPUIKit

class TableViewControllerDelegate {

    let data: [String] = [
        "The first six parameters to a function are passed in",
        "six registers: rdi, rsi, rdx, rcx, r8, and r9. Subsequent",
        "parameters, if any, are passed on the stack. Return values",
        "are returned in rax. For the special case of a two-element",
        "struct, the second element is returned in rdx. Larger structs",
        "are returned by having the caller allocate memory, and then",
        "a pointer to that memory is implicitly passed in as the first",
        "parameter in rdi, with all explicit parameters bumped down.",
        "These are called stret calls in the Objective-C world.",
        "The method signature is central to an invocation object.",
        "The method signature describes how many parameters the method",
        "takes, as well as what the types are. This is critical",
        "information to be able to figure out how to deal with method",
        "parameters and return types. This is why the only way to",
        "create an MAInvocation is with an NSMethodSignature",
        "and that signature is stored in an instance variable",
        "The first six parameters to a function are passed in",
        "six registers: rdi, rsi, rdx, rcx, r8, and r9. Subsequent",
        "parameters, if any, are passed on the stack. Return values",
        "are returned in rax. For the special case of a two-element",
        "struct, the second element is returned in rdx. Larger structs",
        "are returned by having the caller allocate memory, and then",
        "a pointer to that memory is implicitly passed in as the first",
        "parameter in rdi, with all explicit parameters bumped down.",
        "These are called stret calls in the Objective-C world.",
        "The method signature is central to an invocation object.",
        "The method signature describes how many parameters the method",
        "takes, as well as what the types are. This is critical",
        "information to be able to figure out how to deal with method",
        "parameters and return types. This is why the only way to",
        "create an MAInvocation is with an NSMethodSignature",
        "and that signature is stored in an instance variable",
        "The first six parameters to a function are passed in",
        "six registers: rdi, rsi, rdx, rcx, r8, and r9. Subsequent",
        "parameters, if any, are passed on the stack. Return values",
        "are returned in rax. For the special case of a two-element",
        "struct, the second element is returned in rdx. Larger structs",
        "are returned by having the caller allocate memory, and then",
        "a pointer to that memory is implicitly passed in as the first",
        "parameter in rdi, with all explicit parameters bumped down.",
        "These are called stret calls in the Objective-C world.",
        "The method signature is central to an invocation object.",
        "The method signature describes how many parameters the method",
        "takes, as well as what the types are. This is critical",
        "information to be able to figure out how to deal with method",
        "parameters and return types. This is why the only way to",
        "create an MAInvocation is with an NSMethodSignature",
        "and that signature is stored in an instance variable",
        "The first six parameters to a function are passed in",
        "six registers: rdi, rsi, rdx, rcx, r8, and r9. Subsequent",
        "parameters, if any, are passed on the stack. Return values",
        "are returned in rax. For the special case of a two-element",
        "struct, the second element is returned in rdx. Larger structs",
        "are returned by having the caller allocate memory, and then",
        "a pointer to that memory is implicitly passed in as the first",
        "parameter in rdi, with all explicit parameters bumped down.",
        "These are called stret calls in the Objective-C world.",
        "The method signature is central to an invocation object.",
        "The method signature describes how many parameters the method",
        "takes, as well as what the types are. This is critical",
        "information to be able to figure out how to deal with method",
        "parameters and return types. This is why the only way to",
        "create an MAInvocation is with an NSMethodSignature",
        "and that signature is stored in an instance variable"
    ]


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

    func userActivatedIndexes(_ indexSet: IndexSet, in listVC: XPUIListViewController) {
        NSLog("User Double Clicked: \(indexSet)")
    }

    func configureListCellView(_ cell: XPUIListCellView, forRow row: Int, in listVC: XPUIListViewController) {
        let delegate = cell.xp_delegate as! CellConfigurator
        delegate.label.xp_attributedString = NSAttributedString(string:self.data[row])
    }

    func cellForRow(at index: Int, in listVC: XPUIListViewController) -> XPUIListCellView {
        let cell = XPUIListCellViewRecycle.createOrRecycleCellView(withIdentifier: "123",
                                                               with: listVC)
        cell.xp_delegate = cell.xp_delegate ?? CellConfigurator()
        return cell
    }
    func numberOfRows(in listVC: XPUIListViewController) -> Int {
        return self.data.count
    }
}

class CellConfigurator: XPUIListCellViewDelegate {

    let label = XPUILabelCreator.createLabel(with: nil)

    func prepareForReuse(ofCell cell: XPUIListCellView) {
        NSLog("\(cell): PrepareForReuse")
        self.label.xp_attributedString = nil
    }

    func viewDidMove(toPresentation view: XPUIView) {
        NSLog("\(view) ViewDidMoveToPresentation")
        view.xp_addSubview(self.label)
        NSLayoutConstraint.activate([
            view.xp_layoutGuide.trailingAnchor.constraint(equalTo: self.label.xp_layoutGuide.trailingAnchor, constant: 12),
            self.label.xp_layoutGuide.leadingAnchor.constraint(equalTo: view.xp_layoutGuide.leadingAnchor, constant: 12),
            view.xp_layoutGuide.bottomAnchor.constraint(equalTo: self.label.xp_layoutGuide.bottomAnchor, constant: 12),
            self.label.xp_layoutGuide.topAnchor.constraint(equalTo: view.xp_layoutGuide.topAnchor, constant: 12),
            self.label.heightAnchor.constraint(equalToConstant: 100)
            ])
    }

    func viewDidLayout(_ view: XPUIView) {
        NSLog("\(view) ViewDidLayout")
    }

    deinit {
        print("CellConfigurator: Deinit")
    }
}
