
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func experiment(_ sender: UIButton) {
        let nextController = UIImagePickerController();
        present(nextController, animated: true, completion: nil)
    }
    
}

