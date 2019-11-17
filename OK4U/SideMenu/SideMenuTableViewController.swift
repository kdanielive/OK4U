//
//  SideMenuTableViewController.swift
//  OK4U
//
//  Created by Daniel Kim on 11/17/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        var title = ""
        var message = ""
        
        if(row==0) {
            title = "About EstherFormula"
            message = """
            2017년 부터 오케이를 지원 해주신 에스더포뮬러는 오케이와 함께 컬럼비아 학생들의 신체적/정신적 건강의 증진을 꿈꿔 왔습니다.
            
            2017년부터 지금까지 오케이는 에스더포뮬러와 함께 100명 가까이 되는 사람들에게 영양이 풍부한 집밥을 지어 주었으며, 몇차례의 이벤트를 통해 건강에 큰 도움이 되는 울트라 화이토 멀티비타민 & 미네랄, 화이토릭스 팻 블로커, 닥터 에스더 C 1000 등 여러 우수한 제품들을 제공해 줄 수 있었습니다.
            
            오케이가 이렇게 성장할 수 있게 도와주시고, 또 컬럼비아 한인 학생들이 더 건강하게 학창 생활을 이어 나가게 해주신 에스더포뮬러에 언제나 무한한 감사를 표합니다.
            """
        } else if(row==1) {
            title = "About OK4WellBeing"
            message = """
            2016년 11월에 설립 된 오케이는 문화, 학업, 취업 등을 목표로 하는 타 한인 학생회와는 다르게 한인 학생들의 신체적/정신적 건강의 증진을 목표로 설립 되었습니다.
            
            저희 오케이 학생회원들은 매년마다 학생들의 지친 몸과 마음을 달래는 비타민 드림을 포함하여, 집밥이 그리운 학생들의 배를 따스하게 해주는 옼식당 등의 이벤트를 기획/개최하여 한국 학생들의 삶의 질을 증진 시키기 위해 동아리 활동을 힘차게 이어 나갑니다.
            
            삶이 힘드시고 지치실 때 오케이를 잊지 마시고 저희의 다음 이벤트를 기다려 주세요!!
            """
        } else if(row==2) {
            title = "Credits"
            message = """
            Lead/Sole Developer: 김석준 Seouk Jun Kim (Daniel)
            UI/UX Design: 김석준 Seouk Jun Kim (Daniel)
            Project Design: 김석준 Seouk Jun Kim (Daniel), Ji Woo Kym, 장현화 Hyunwha Chang
            """
        }else {}
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "옼케이~", style: .default, handler: nil))
        self.navigationController?.present(alert, animated: false, completion: nil)
    }
    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
