//
//  WelcomeVC.swift
//  NewsApp
//
// 
//

import UIKit
import Lottie

class WelcomeVC: UIViewController {

    
    @IBOutlet weak var holderView: UIView!
    let AnimationView1 = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAnimation()
        DispatchQueue.main.asyncAfter(deadline: .now()+2.0) {
            let vc = self.storyboard?.instantiateViewController(identifier: "nav") as! UINavigationController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }
    private func setupAnimation(){
        AnimationView1.animation = Animation.named("56091-people-reading-news-on-phone")
        AnimationView1.frame = view.bounds
        AnimationView1.backgroundColor = .white
        AnimationView1.contentMode = .scaleAspectFit
        AnimationView1.loopMode = .playOnce
        AnimationView1.play()
        holderView.addSubview(AnimationView1)
        }

    

}
