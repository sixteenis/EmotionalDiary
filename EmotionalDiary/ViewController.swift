//
//  ViewController.swift
//  EmotionalDiary
//
//  Created by 박성민 on 5/17/24.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var maintitle: UILabel!

    @IBOutlet var buttonList: [UIButton]!
    
    @IBOutlet var labelList: [UILabel]!
    
    @IBOutlet var resetButton: UIButton!
    
    var slime: [String] = ["행복해","사랑해","좋아해", "당황해", "속상해", "우울해", "심심해", "찝찝해", "울찝해"]
    var slimeCount: [Int] = Array(repeating: 0, count: 9)
    //var slimeCounts: [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        savedData()
//        for i in 0..<9{
//            slimeCount[i] = UserDefaults.standard.integer(forKey: "cnt\(i)")
//            print(slimeCount[i])
//        }
    }
    func setView() {
        resetButton.setTitle("감정 기록 초기화", for: .normal)
        resetButton.tintColor = .black
        resetButton.backgroundColor = .lightGray
        resetButton.layer.cornerRadius = 5
        
        maintitle.text = "당신의 현재 감정을 눌러보세요!!!"
        maintitle.textAlignment = .center
        
        for i in 0...8{
            titleSet(labelList[i], i)
            buttonList[i].setImage(UIImage(named: "slime\(i+1)"), for: .normal)
            buttonList[i].tag = i
        }
        
        
    }
    // MARK: - 타이틀 설정 기능
    func titleSet(_ title: UILabel, _ index: Int) {
        title.numberOfLines = 1
        title.textColor = .black
        title.textAlignment = .center
        title.text = "\(slime[index]) \(UserDefaults.standard.integer(forKey: "cnt\(index)"))"
    }
    // MARK: - 리셋 기능
    func reset() {
        for i in 0...8{
//            slimeCount[i] = 0
//            titleSet(labelList[i], i)
            UserDefaults.standard.set(0, forKey: "cnt\(i)")
            titleSet(labelList[i], i)
        }
    }
    // MARK: - 이전 기록 불러오기
    func savedData() {
        for i in 0..<9 {
            if UserDefaults.standard.integer(forKey: "cnt\(i)") == 0 {
                UserDefaults.standard.set(0, forKey: "cnt\(i)")
            }
        }
    }


    @IBAction func buttonTappend(_ sender: UIButton) {
        
        let index = sender.tag
        let cnt = UserDefaults.standard.integer(forKey: "cnt\(index)") + 1
        UserDefaults.standard.set(cnt, forKey: "cnt\(index)")
        labelList[sender.tag].text = "\(slime[sender.tag]) \(cnt)"
        maintitle.text = "당신의 현재 감정 \(slime[sender.tag]) 1 증가!"
//        labelList[sender.tag].text = "\(slime[sender.tag]) \(slimeCount[sender.tag])"
//        maintitle.text = "당신의 현재 감정 \(slime[sender.tag]) 1 증가!"
        
        print(cnt)
        
    }
    
    
    
    @IBAction func resetButtonTappend(_ sender: UIButton) {
        maintitle.text = "초기화 완료!"
        reset()
    }

}
