//
//  CalmDViewController.swift
//  qwerty5
//
//  Created by Арсений on 03.04.2020.
//  Copyright © 2020 Арсений. All rights reserved.
//

import UIKit

class CalmDViewController: UIViewController {

    @IBOutlet weak var definition1: UILabel!
    @IBOutlet weak var definition2: UILabel!
    @IBOutlet weak var definition3: UILabel!

    @IBOutlet weak var CalmPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     CalmPic.layer.cornerRadius = 28
        
        let Advicepush = UILongPressGestureRecognizer(target: self, action: #selector(ToTheCalmAdvice(longpress:)))
        self.view.addGestureRecognizer(Advicepush)
        
        definition1.layer.cornerRadius = 13
        definition1.layer.masksToBounds = true
        
        definition2.layer.cornerRadius = 13
        definition2.layer.masksToBounds = true
        
        definition3.layer.cornerRadius = 13
        definition3.layer.masksToBounds = true
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func CalmtoHappy(_ sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: HappyDViewController.self) {
                _ =  self.navigationController!.pushViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func CalmtoIdk(_ sender: UIButton) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: IdkDViewController.self) {
                _ =  self.navigationController!.pushViewController(controller, animated: true)
                break
            }
        }
    }
    @objc func ToTheCalmAdvice(longpress:UILongPressGestureRecognizer){
        performSegue(withIdentifier: "Calmpush", sender: self)
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
