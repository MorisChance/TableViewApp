//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 森本　浩輔 on 2022/10/16.
//

import UIKit

class AddListViewController: UIViewController {


    @IBOutlet weak var addText: UITextField!
    var taskArray:[String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = UserDefaults.standard

         //"add"というキーで保存された値がなにかある -> 値をtaskArrayへ
        if userDefaults.object(forKey: "add") != nil {
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
    }
    
    @IBAction func addTask(_ sender: Any) {
        let userDefaults = UserDefaults.standard //そのままだと長いので変数にいれる

        if addText.text != "" {
            taskArray.append(addText.text!) //TextTextで記入されたテキストを入れる
            
            userDefaults.set(taskArray, forKey: "add") //キー"add"で配列をUserDefaultsに保存
            
            self.navigationController?.popViewController(animated: true) //1つ前の画面に戻る
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
