import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var currentImageIndex = 0
    var imageNameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...6 {
            imageNameArray.append(String(format: "%02d", i))
        }
        print(imageNameArray)
        
    }
    
    @IBAction func prevBtn(_ sender: UIButton) {
        currentImageIndex -= 1
        if currentImageIndex < 0 {
            currentImageIndex = imageNameArray.count - 1
        }
        imageView.image = UIImage(named: imageNameArray[currentImageIndex])
    }
    
    
    @IBAction func nextBtn(_ sender: UIButton) {
        currentImageIndex += 1
        if imageNameArray.count <= currentImageIndex {
            currentImageIndex = 0
        }
        imageView.image = UIImage(named: imageNameArray[currentImageIndex])
    }
    
    
}

