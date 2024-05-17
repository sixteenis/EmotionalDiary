//
//  ViewController.swift
//  EmotionalDiary
//
//  Created by 박성민 on 5/17/24.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet var maintitle: UILabel!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    
    
    @IBOutlet var resetButton: UIButton!
    
    var slime: [String] = ["","행복해","사랑해","좋아해", "당황해", "속상해", "우울해", "심심해", "찝찝해", "울찝해"]
    var slimeCount: [Int] = Array(repeating: 0, count: 10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    func setView() {
        resetButton.setTitle("감정 기록 초기화", for: .normal)
        resetButton.tintColor = .black
        resetButton.backgroundColor = .lightGray
        resetButton.layer.cornerRadius = 5
        
        maintitle.text = "당신의 현재 감정을 눌러보세요!!!"
        maintitle.textAlignment = .center
        
        button1.setImage(UIImage(named: "slime1"), for: .normal)
        button2.setImage(UIImage(named: "slime2"), for: .normal)
        button3.setImage(UIImage(named: "slime3"), for: .normal)
        button4.setImage(UIImage(named: "slime4"), for: .normal)
        button5.setImage(UIImage(named: "slime5"), for: .normal)
        button6.setImage(UIImage(named: "slime6"), for: .normal)
        button7.setImage(UIImage(named: "slime7"), for: .normal)
        button8.setImage(UIImage(named: "slime8"), for: .normal)
        button9.setImage(UIImage(named: "slime9"), for: .normal)
        
        titleSet(label1, 1)
        titleSet(label2, 2)
        titleSet(label3, 3)
        titleSet(label4, 4)
        titleSet(label5, 5)
        titleSet(label6, 6)
        titleSet(label7, 7)
        titleSet(label8, 8)
        titleSet(label9, 9)
        
        
        
        
    }
    func titleSet(_ title: UILabel, _ index: Int) {
        title.numberOfLines = 1
        title.textColor = .black
        title.textAlignment = .center
        title.text = "\(slime[index]) \(slimeCount[index])"
    }
    func changtitle(_ title: UILabel,num: Int) {
        title.text = "\(slime[num]) \(slimeCount[num])"
        maintitle.text = "당신의 현재 감정 \(slime[num]) 1 증가!"
    }
    func buttonTappendChangCount(index: Int) {
        switch index{
        case 1:
            slimeCount[1] += 1
            changtitle(label1, num: 1)
        case 2:
            slimeCount[2] += 1
            changtitle(label2, num: 2)
        case 3:
            slimeCount[3] += 1
            changtitle(label3, num: 3)
        case 4:
            slimeCount[4] += 1
            changtitle(label4, num: 4)
        case 5:
            slimeCount[5] += 1
            changtitle(label5, num: 5)
        case 6:
            slimeCount[6] += 1
            changtitle(label6, num: 6)
        case 7:
            slimeCount[7] += 1
            changtitle(label7, num: 7)
        case 8:
            slimeCount[8] += 1
            changtitle(label8, num: 8)
        case 9:
            slimeCount[9] += 1
            changtitle(label9, num: 9)
        default:
            break
        }
        
    }
    
    func reset() {
        for i in 1...9 {
            slimeCount[i] = 0
        }
        titleSet(label1, 1)
        titleSet(label2, 2)
        titleSet(label3, 3)
        titleSet(label4, 4)
        titleSet(label5, 5)
        titleSet(label6, 6)
        titleSet(label7, 7)
        titleSet(label8, 8)
        titleSet(label9, 9)
        
    }


    @IBAction func button1Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 1)
    }
    
    @IBAction func button2Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 2)
    }
    
    
    @IBAction func button3Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 3)
    }
    
    
    @IBAction func button4Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 4)
    }
    
    
    @IBAction func button5Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 5)
    }
    
    
    
    @IBAction func button6Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 6)
    }
    
    
    @IBAction func button7Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 7)
    }
    
    
    @IBAction func button8Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 8)
    }
    
    
    @IBAction func button9Tappend(_ sender: UIButton) {
        buttonTappendChangCount(index: 9)
    }
    
    
    @IBAction func resetButtonTappend(_ sender: UIButton) {
        maintitle.text = "초기화 완료!"
        reset()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
