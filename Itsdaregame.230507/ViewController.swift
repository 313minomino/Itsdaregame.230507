//
//  ViewController.swift
//  Itsdaregame.230507
//
//  Created by 酒井実 on 2023/05/07.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokodeLabel: UILabel!
    @IBOutlet var daregaLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    let itsuArray: [String] = ["さっき","縄文時代","30年後","１分後"]
    let dokodeArray: [String] = ["slackで","地球の裏側で","Youtubeで","家で"]
    let daregaArray: [String] = ["目の前の人が","ラインの上から三番目の人が","学部長が","隣の家の人が"]
    let doshitaArray: [String] = ["消しゴムをすごい腱膜で倒した","chatGPTと恋した","ウーパールーパーを買い始めた","笛ラムネ選手権で優勝した"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        changeButton.layer.cornerRadius = 35
        resetButton.layer.cornerRadius = 35
        randomButton.layer.cornerRadius = 35
        
        itsuLabel.layer.cornerRadius = 12
        dokodeLabel.layer.cornerRadius = 12
        daregaLabel.layer.cornerRadius = 12
        doshitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dokodeLabel.clipsToBounds = true
        daregaLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
    }
    
    @IBAction func change(){
        itsuLabel.text = itsuArray[index]
        dokodeLabel.text = dokodeArray[index]
        daregaLabel.text = daregaArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3{
            index = 0
        }else{
            index = index + 1
        }
    }
        
    @IBAction func reset(){
            itsuLabel.text = "---"
            dokodeLabel.text = "---"
            daregaLabel.text = "---"
            doshitaLabel.text = "---"
            
            index = 0
            
        }
        
    @IBAction func random(){
            let itsuIndex = Int.random(in: 0...3)
            let dokodeIndex = Int.random(in: 0...3)
            let daregaIndex = Int.random(in: 0...3)
            let doshitaIndex = Int.random(in: 0...3)
            
            print("いつ: \(itsuIndex)")
            print("どこで: \(dokodeIndex)")
            print("だれが: \(daregaIndex)")
            print("どうした: \(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokodeLabel.text = dokodeArray[dokodeIndex]
        daregaLabel.text = daregaArray[daregaIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        }
        
}
