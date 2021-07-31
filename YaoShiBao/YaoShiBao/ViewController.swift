//
//  ViewController.swift
//  YaoShiBao
//
//  Created by 程立卿 on 2021/7/30.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.addSubview({
            let lbl = UILabel(frame: CGRect(x: 10, y: 100, width: 200, height: 40))
            #if DEBUG
            lbl.text = "DEBUG"
            #elseif INTERNAL
            lbl.text = "INTERNAL"
            #elseif PRODUCTION
            lbl.text = "PRODUCTION"
            #endif
            return lbl
        }())
    }
}
