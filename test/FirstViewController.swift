import UIKit
import SnapKit

class FirstViewController: UIViewController {
    
    let label = UILabel()
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .brown
        
        labelUI()
        buttonUI()
    }
    
    func labelUI() {
        label.text = "First ViewController"
        label.textColor = .black
        
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    func buttonUI() {
        button.setTitle("First Button", for: .normal)
        button .setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        
        view.addSubview(button)
        button.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(label.snp.bottom).offset(8)
        }
        button.addTarget(self, action: #selector(showModal), for: .touchUpInside)
    }
    @objc func showModal() {
        let modalViewController = ModalViewController()
        self.present(modalViewController, animated: true, completion: nil)
    }
}
    
