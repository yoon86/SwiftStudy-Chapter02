import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lampImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func zoomBtn(_ sender: UIButton) {
        if sender.currentTitle == "확대" {
            lampImage.frame.size.width *= 2
            lampImage.frame.size.height *= 2
            sender.setTitle("축소", for: .normal)
        } else {
            lampImage.frame.size.width /= 2
            lampImage.frame.size.height /= 2
            sender.setTitle("확대", for: .normal)
        }
        
    }
    
    @IBAction func onOffSwitch(_ sender: UISwitch) {
        lampImage.image = sender.isOn ? #imageLiteral(resourceName: "lamp_on") : #imageLiteral(resourceName: "lamp_off")
    }
    
}

