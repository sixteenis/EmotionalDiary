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
    
    @IBOutlet var labelList: [UILabel]!
    
    @IBOutlet var resetButton: UIButton!
    
    var slime: [String] = ["행복해","사랑해","좋아해", "당황해", "속상해", "우울해", "심심해", "찝찝해", "울찝해"]
    var slimeCount: [Int] = Array(repeating: 0, count: 9)
    
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
        button1.tag = 0
        button2.setImage(UIImage(named: "slime2"), for: .normal)
        button2.tag = 1
        button3.setImage(UIImage(named: "slime3"), for: .normal)
        button3.tag = 2
        button4.setImage(UIImage(named: "slime4"), for: .normal)
        button4.tag = 3
        button5.setImage(UIImage(named: "slime5"), for: .normal)
        button5.tag = 4
        button6.setImage(UIImage(named: "slime6"), for: .normal)
        button6.tag = 5
        button7.setImage(UIImage(named: "slime7"), for: .normal)
        button7.tag = 6
        button8.setImage(UIImage(named: "slime8"), for: .normal)
        button8.tag = 7
        button9.setImage(UIImage(named: "slime9"), for: .normal)
        button9.tag = 8
        for i in 0...8{
            titleSet(labelList[i], i)
        }
        
        
        
        
        
    }
    func titleSet(_ title: UILabel, _ index: Int) {
        title.numberOfLines = 1
        title.textColor = .black
        title.textAlignment = .center
        title.text = "\(slime[index]) \(slimeCount[index])"
    }
    
    func reset() {
        for i in 0...8 {
            slimeCount[i] = 0
        }
        for i in 0...8{
            titleSet(labelList[i], i)
        }
        
        
    }


    @IBAction func buttonTappend(_ sender: UIButton) {
        slimeCount[sender.tag] += 1
        labelList[sender.tag].text = "\(slime[sender.tag]) \(slimeCount[sender.tag])"
        maintitle.text = "당신의 현재 감정 \(slime[sender.tag]) 1 증가!"
        
    }
    
    
    
    @IBAction func resetButtonTappend(_ sender: UIButton) {
        maintitle.text = "초기화 완료!"
        reset()
    }

}
