//
//  ViewController.swift
//  Animation
//
//  Created by Ali Shaker on 4/15/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var showHideButton: UIButton!
    @IBOutlet weak var centreConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNotificationView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    fileprivate func setupNotificationView() {
        containerView.addCornerRadius()
        containerView.dropShadow()
    }
    
    func showNotification() {
        self.containerView.alpha = 1
        topConstraint.constant = CGFloat(20)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 4, options: [], animations: {
            self.view.layoutSubviews()
        }) { (finished) in
        }
    }
    
    func hideNotification() {
        self.topConstraint.constant = -100
        UIView.animate(withDuration: 0.5, delay: 0, options: [.allowUserInteraction], animations: {
            self.view.layoutSubviews()
        }) { (finished) in
            self.containerView.alpha = 0
        }
    }
    
    @IBAction func showAnimationPressed(_ sender: Any) {
        hideNotification()
    }
    
    @IBAction func showNotificationButton(_ sender: Any) {
        showNotification()
    }
    
}

