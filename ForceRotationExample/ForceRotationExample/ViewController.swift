import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let orientation: UIDeviceOrientation
        
        if UIDevice.current.orientation.isPortrait {
            orientation = .landscapeLeft
        } else {
            orientation = .portrait
        }
        
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
}
