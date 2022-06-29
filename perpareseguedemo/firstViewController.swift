//
//  firstViewController.swift
//  perpareseguedemo
//
//  Created by Chu Go-Go on 2022/6/29.
//

import UIKit
protocol updateLabelDelegate:AnyObject{
    func updateLabel(label:String)
    
}
class firstViewController: UIViewController {
    @IBOutlet weak var labeltext: UILabel!
    var text = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print("text\(text)")
//        labeltext.text = text
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "textSegue"{
            if let oderPresentVC = segue.destination as? secViewController {
                print(3333)
                oderPresentVC.delegate = self
               
            }
        }
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
extension firstViewController:updateLabelDelegate{
    func updateLabel(label: String) {
        labeltext.text = label
        text = label
        print(" extension text\(text)")
    }
    

    
    
    
}
