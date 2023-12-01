//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Keshav Kishore on 27/11/23.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVc = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVc.modalPresentationStyle = .overFullScreen
            alertVc.modalTransitionStyle = .crossDissolve
            self.present(alertVc, animated: true)
        }
    }
}
