

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnSend(_ sender: UIButton) {
        helloLabel.text = "Hello," + textField.text!
        
    }
    
    
}

/*
 상수 : let을 사용해 선언. 값을 지정
 변수 : var을 사용해 선언. 최초 선언 값 이외에도 중간에 계속 다른 값으로 변경 가능.
 
 함수나 메소드는 대문자의 명사로 시작.
 변수나 상수는 소문자의 명사로 시작.
 
 */

