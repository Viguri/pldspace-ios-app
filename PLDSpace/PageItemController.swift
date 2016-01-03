
import UIKit

class PageItemController: UIViewController {
    
    var itemIndex: Int = 0
    var imageName: String = "" {
        
        didSet {
            if let imageView = contentImageView {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    
    @IBOutlet var contentImageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
    }
    
}