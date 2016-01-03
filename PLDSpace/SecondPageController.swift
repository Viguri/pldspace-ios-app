
import UIKit

class SecondPageController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.roundingUIView(self.PLD_logo, cornerRadiusParam: 10)
        
    }
    
    private func roundingUIView(let aView: UIView!, let cornerRadiusParam: CGFloat!) {
        aView.clipsToBounds = true
        aView.layer.cornerRadius = cornerRadiusParam
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
