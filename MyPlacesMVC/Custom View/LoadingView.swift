//
//  LoadingView.swift
//  MyPlacesMVC
//
//  Created by Vijay Bhaskar on 20/05/21.
//

import UIKit

class LoadingView {
    
    private static var loaderAlert: UIAlertController!
        
    static func showLoader(in vc: UIViewController) {
        loaderAlert = UIAlertController(title: nil, message: "Loading", preferredStyle: .alert)
        let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.large
        loadingIndicator.startAnimating()
        loaderAlert.view.addSubview(loadingIndicator)
        DispatchQueue.main.async {
            vc.present(loaderAlert, animated: true, completion: nil)
        }
    }
    
    static func hideLoader() {
//        DispatchQueue.main.async {
            self.loaderAlert.dismiss(animated: true, completion: nil)
//        }
    }
    
}
