//
//  ViewController.swift
//  App
//
//  Created by YJ Li on 2021/12/23.
//

import UIKit

import Flutter

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toFlutter() {
        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
            let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
            self.present(flutterViewController, animated: true, completion: nil)
        }
    }
}
