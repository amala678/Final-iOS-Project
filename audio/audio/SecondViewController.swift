//
//  SecondViewController.swift
//  audio
//
//  Created by APPLE on 17/10/22.
//

import UIKit
import AVFAudio

class SecondViewController: UIViewController {
    var numberonscreen: Double = 0
    var prevnumber: Double = 0
    var performop = false
    var operation = 0
    
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    @IBAction func operatorBtn(_ sender: UIButton) {
        if calcLabel.text != "" && sender.tag != 16 && sender.tag != 15{
            prevnumber = Double(calcLabel.text!)!
            if sender.tag == 11{
                calcLabel.text = "+"
            }
            else if sender.tag == 12{
                calcLabel.text = "-"
            }
            else if sender.tag == 13{
                calcLabel.text = "/"
            }
            else if sender.tag == 14{
                calcLabel.text = "*"
            }
            performop = true
            operation = sender.tag
        }
        else if sender.tag == 15{
            if operation == 11{
                calcLabel.text = String(prevnumber+numberonscreen)
            }
            else if operation == 12{
                calcLabel.text = String(prevnumber-numberonscreen)
            }
            else if operation == 13{
                calcLabel.text = String(prevnumber/numberonscreen)
            }
            else if operation == 14{
                calcLabel.text = String(prevnumber*numberonscreen)
            }
            
            
        }
        else if sender.tag == 16{
            calcLabel.text = ""
            prevnumber = 0
            numberonscreen = 0
            operation = 0
            
        }
    }
    
    
    @IBAction func operandBtn(_ sender: UIButton) {
        if performop == true{
            calcLabel.text = String(sender.tag-1)
            numberonscreen = Double(calcLabel.text!)!
            performop = false
        }
        else{
            calcLabel.text = calcLabel.text! + String(sender.tag-1)
            numberonscreen = Double(calcLabel.text!)!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
