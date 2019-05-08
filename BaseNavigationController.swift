//
//  BaseNavigationController.swift
//  Boss
//
//  Created by 李凯 on 2018/7/9.
//  Copyright © 2018年 bjknrt. All rights reserved.
//

import UIKit
import Material

class BaseNavigationController: UINavigationController {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        //设置默认显示导航栏
        self.setNavigationBarHidden(false, animated: true)
        //设置默认返回按钮
//        if (self.viewControllers.count > 0) {
//            let leftCustomBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//            leftCustomBtn.setImage(UIImage(named: "goBack")?.withRenderingMode(.alwaysOriginal), for: .normal)
//            leftCustomBtn.setTitle("返回", for: .normal)
//            leftCustomBtn.setTitleColor(UIColor(hex: "3588FE"), for: .normal)
//            leftCustomBtn.addTarget(self, action: #selector(goBack), for: .touchUpInside)
//            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftCustomBtn)
//        }
        super.pushViewController(viewController, animated: true)
    }
    
    @objc func goBack() {
        self.navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let statusesArray = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]],
            let user = statusesArray[0]["user"] as? [String: Any],
            let username = user["name"] as? String {
            // Finally we got the username
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
