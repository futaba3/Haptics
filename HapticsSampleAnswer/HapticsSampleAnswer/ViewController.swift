//
//  ViewController.swift
//  HapticsSampleAnswer
//
//  Created by Ayana Kudo on 2024/02/04.
//

import UIKit

class ViewController: UIViewController {
    
    var generator: UINotificationFeedbackGenerator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func success() {
        playFeedback(type: .success)
    }
    
    @IBAction func error() {
        playFeedback(type: .error)
    }

    @IBAction func warning() {
        playFeedback(type: .warning)
    }
    
    func playFeedback(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator = UINotificationFeedbackGenerator()
        generator?.prepare()
        generator?.notificationOccurred(type)
    }

}

