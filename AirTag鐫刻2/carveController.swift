//
//  carveController.swift
//  AirTag鐫刻2
//
//  Created by ROSE on 2021/6/17.
//

import UIKit

class carveController: UIViewController {

    @IBOutlet weak var carveTextField: UITextField!
    @IBOutlet weak var maketLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //顯示文字到Label
    @IBAction func inputText(_ sender: UITextField) {
        maketLabel.text = sender.text
        //取得字數
        warningLabel.text = String(carveTextField.text!.count)
        let count = Int(warningLabel.text!)
        print(count!)
        if count! > 4{
            warningLabel.isHidden = false
            warningLabel.text = "你的訊息長度超出可用空間"
            //print("你的訊息長度超出可用空間")
        }
    }
    // 收起鍵盤
    @IBAction func closekeyboard(_ sender: Any) {
        //carveTextField.resignFirstResponder()
    }
    //點空白收起鍵盤
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
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
