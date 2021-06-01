//
//  SelectSiGunGuViewController.swift
//  HospitalApp
//
//  Created by kpugame on 2021/06/01.
//  Copyright © 2021 junhyeok.2021smartphone. All rights reserved.
//

import UIKit

class SelectSiGunGuViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var DoPickerView: UIPickerView!
    @IBOutlet weak var SiGunGuPickerView: UIPickerView!
    
    
    var doDAtaSource:[String] = ["서울특별시","부산광역시","울산광역시","대전광역시","대구광역시",
                        "경기도","강원도","충청북도","충청남도","전라북도","전라남도",
                        "경상북도","경상남도"]
    
    var seoulDataSource:[String] = ["도봉구","은평구","동대문구","동작구","금천구",
                                   "구로구","종로구","강북구","중랑구","강남구",
                                    "강서구","중구구","강동구","광진구","마포구",
                                     "서초구","성북구","노원구","송파구","서대문구",
                                     "양천구","영등포구","관악구","성동구","용산구",]
    
    var tempData:[String] = ["쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기",
    "쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기",
    "쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기",
    "쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기",
    "쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기","쓰레기"]
    
    var selectedSi:String = "서울특별시"
    var selectedSiGunGu:String = "구로구"
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.DoPickerView.delegate = self
        self.DoPickerView.dataSource = self
        self.SiGunGuPickerView.delegate = self
        self.SiGunGuPickerView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        if(pickerView.tag == 0)
        {
            return doDAtaSource.count
        }
        
        else{
            
                return seoulDataSource.count
        }
        
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
        if(pickerView.tag == 0)
        {
            return doDAtaSource[row]
        }
        else{
            print(seoulDataSource[row])
            return seoulDataSource[row]
            
        
        }
        
        return " "
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        if(pickerView.tag == 0)
        {
            selectedSi = doDAtaSource[row]
            
        }
        else
        {
            selectedSiGunGu = seoulDataSource[row]
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
