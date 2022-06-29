//
//  secViewController.swift
//  perpareseguedemo
//
//  Created by Chu Go-Go on 2022/6/29.
//

import UIKit

class secViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField!
    var delegate: updateLabelDelegate?
var sectext = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backbutton(_ sender: UIButton) {
        
            sectext = textfield.text ?? "uuu"
            delegate?.updateLabel(label: sectext)
            print(sectext)
            dismiss(animated: true)
        
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
