//
//  UIViewController.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import UIKit

extension UIViewController{

    func displayAlert(alertMessage: String) {
        let alert = UIAlertController(title: "Alert", message:alertMessage , preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
    
    func displaySpinner(onView : UIView) -> UIView {
        let spinnerView = UIView(frame: UIScreen.main.bounds)
        spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let ai = UIActivityIndicatorView.init(style: .whiteLarge)
        ai.startAnimating()
        ai.center = spinnerView.center
        
        DispatchQueue.main.async {
            spinnerView.addSubview(ai)
            
            UIApplication.shared.keyWindow!.addSubview(spinnerView)
            UIApplication.shared.keyWindow!.bringSubviewToFront(spinnerView)
            onView.bringSubviewToFront(spinnerView)
        }
        
        return spinnerView
    }
    
    func removeSpinner(spinner :UIView) {
        DispatchQueue.main.async {
            spinner.removeFromSuperview()
        }
    }

}

