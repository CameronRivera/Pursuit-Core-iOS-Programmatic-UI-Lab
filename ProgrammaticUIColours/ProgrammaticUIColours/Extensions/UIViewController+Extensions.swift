//
//  UIViewController+Extensions.swift
//  ProgrammaticUIColours
//
//  Created by Cameron Rivera on 1/28/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert(_ title: String, _ message: String, completion: ((UIAlertAction) -> ())? = nil){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: completion)
        let playAgainAction = UIAlertAction(title: "Play Again", style: .default, handler: completion)
        alertController.addAction(cancelAction)
        alertController.addAction(playAgainAction)
        present(alertController, animated: true)
    }
}
