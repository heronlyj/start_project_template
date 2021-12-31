//
//  ViewController.swift
//  App
//
//  Created by YJ Li on 2021/12/23.
//

import UIKit

import flutter_boost

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(toFlutter), for: UIControl.Event.touchUpInside)

        button.frame = CGRect(origin: .zero, size: .init(width: 100, height: 100))
        button.backgroundColor = UIColor.orange
        button.setTitle("TO FLUTTER", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        button.center = view.center

        view.addSubview(button)
    }


    @objc func toFlutter() {
        FlutterBoost.instance().open("mainPage", arguments: ["data":"这是自定义的数据"], completion: nil)
    }
}
