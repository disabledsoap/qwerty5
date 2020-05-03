
import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var finishLabel:UILabel!
    @IBOutlet weak var CellView: UIView!
    @IBOutlet weak var ShadowView: UIView!
    @IBOutlet weak var NoNameView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
       
        
        CellView.layer.cornerRadius = 18
        

      
        
        
        startLabel.layer.cornerRadius = 18
        finishLabel.layer.cornerRadius = 18
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
