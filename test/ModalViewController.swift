import UIKit
import SnapKit

class ModalViewController: UIViewController {
    
    let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
        
        labelUI()
        buttonUI()
    }
    
    func labelUI() {
        label.text = "Modal ViewController"
        label.textColor = .black
        
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    func buttonUI() {
        button.setTitle("Modal Button", for: .normal)
        button .setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(label.snp.bottom).offset(8)
        }
        
        button.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
    }
    
    @objc func closeModal() {
        self.dismiss(animated: true, completion: nil)
    }
}
    
