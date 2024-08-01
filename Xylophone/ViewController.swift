import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var player:AVAudioPlayer!
    @IBAction func keyPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3){
            sender.alpha=0.5
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+0.3){
            UIView.animate(withDuration: 0.3){
                sender.alpha=1
            }        }
        let key=sender.titleLabel!.text!;
        let url=Bundle.main.url(forResource: key, withExtension: "wav");
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        

    }
  
    
}
