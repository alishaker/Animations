//
//  SecondViewController.swift
//  Animation
//
//  Created by Ali Shaker on 4/15/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var firstViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var secondViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var thirdViewLeadingConstraint: NSLayoutConstraint!
    
    let firstViewLeadingConstraintValue: CGFloat = 10
    let secondViewLeadingConstraintValue: CGFloat = 20
    let thirdViewLeadingConstraintValue: CGFloat = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropShadow(view: firstView)
        dropShadow(view: secondView)
        dropShadow(view: thirdView)
        
        firstViewLeadingConstraint.constant = (-firstViewLeadingConstraintValue) - firstView.frame.width
        secondViewLeadingConstraint.constant = (-secondViewLeadingConstraintValue) - secondView.frame.width
        thirdViewLeadingConstraint.constant = (-thirdViewLeadingConstraintValue) - thirdView.frame.width
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showViews()
        animateClouds()
    }
    
    func showViews() {
        firstViewLeadingConstraint.constant = firstViewLeadingConstraintValue
        UIView.animate(withDuration: 0.5, delay: 0.2, options: [], animations: {
            self.view.layoutSubviews()
        }) { (finished) in
            
        }
        
        secondViewLeadingConstraint.constant = secondViewLeadingConstraintValue
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [], animations: {
            self.view.layoutSubviews()
        }) { (finished) in
            
        }
        
        thirdViewLeadingConstraint.constant = thirdViewLeadingConstraintValue
        UIView.animate(withDuration: 0.5, delay: 0.4, options: [], animations: {
            self.view.layoutSubviews()
        }) { (finished) in
            
        }
        
        
    }
    
    private func animateClouds() {
        let options: UIView.AnimationOptions = [.curveEaseInOut,
                                                .autoreverse]
        
        UIView.animate(withDuration: 2,
                       delay: 2,
                       options: options,
                       animations: {
                        self.firstView.frame.size.height *= 1.18
                        self.firstView.frame.size.width *= 1.18
        }) { (finished) in
            if finished {
                self.firstView.frame.size.height /= 1.18
                self.firstView.frame.size.width /= 1.18
            }
        }
        
        UIView.animate(withDuration: 2,
                       delay: 6,
                       options: options,
                       animations: {
                        self.secondView.frame.size.height *= 1.18
                        self.secondView.frame.size.width *= 1.18
        }) { (finished) in
            if finished {
                self.secondView.frame.size.height /= 1.18
                self.secondView.frame.size.width /= 1.18
            }
        }
        
        UIView.animate(withDuration: 2,
                       delay: 9,
                       options: options,
                       animations: {
                        self.thirdView.frame.size.height *= 1.18
                        self.thirdView.frame.size.width *= 1.18
        }) { (finished) in
            if finished {
                self.thirdView.frame.size.height /= 1.18
                self.thirdView.frame.size.width /= 1.18
            }
        }
    }
    
    func dropShadow(view: UIView) {
        view.layer.cornerRadius = 5
        view.layer.shadowColor = UIColor.label.cgColor
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.3
        view.layer.shadowRadius = 5
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
