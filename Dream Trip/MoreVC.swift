//
//  MoreViewController1.swift
//  Dream Trip
//
//  Created by Stan on 2021/11/9.
//

import UIKit

class MoreVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myview: UIImageView!
    
    @IBOutlet weak var test: UILabel!
    //    var moreList = [
    //    ("star.fill", "給好評！"),
    //    ("square.and.arrow.up", "分享"),
    //    ("gearshape.fill", "設定"),
    //    ("envelope.circle.fill", "通知"),
    //    ("square.and.pencil", "與我們聯絡"),
    //    ("fb", "粉絲頁"),
    //    ]
        
    
    var moreList = [
        ("star", "給好評！"),
        ("share", "分享"),
        ("setting", "設定"),
        ("notify", "通知"),
        ("contact", "與我們聯絡"),
        ("facebook", "Facebook粉絲頁"),
        ]
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    
         func numberOfSections(in tableView: UITableView) -> Int {
            
            return 1
        }

         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return moreList.count
        }

        
         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            
            //cell.imageView?.image = UIImage(systemName: moreList[indexPath.row].0)
            cell.imageView?.image = UIImage(named: moreList[indexPath.row].0)
            cell.textLabel?.text = moreList[indexPath.row].1
            
            //cell.accessoryType = .checkmark
             
            return cell
        }
        
         func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return "更多項目"
        }
        
         func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            return "目前版本"
        }
        
         func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
             if indexPath.row == 1{
                 let activityViewController = UIActivityViewController(activityItems: ["我想要與您分享此款好用的APP！!https://www.google.com"], applicationActivities: nil)
                 self.present(activityViewController, animated: true, completion: nil)
             }else{
                 self.performSegue(withIdentifier: String(indexPath.row), sender: nil)
             }
             print("點選了第：\(indexPath.row) row")
             print("點選了：\(moreList[indexPath.row].0) ")
        }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == String(0){
//            let MoreVC1 = segue.destination as? MoreVC1
//            MoreVC1?.aaa = test.text
//            MoreVC1?.bbb = myview.image
//            }
//    }
    
}
       
        
    