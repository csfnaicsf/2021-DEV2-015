//
//  ViewController.swift
//  Berlin Clock
//
//  Created by 2021-DEV2-015 on 31/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secondsView: UIView!
    @IBOutlet weak var hours5: UIView!
    @IBOutlet weak var hours10: UIView!
    @IBOutlet weak var hours15: UIView!
    @IBOutlet weak var hours20: UIView!
    @IBOutlet weak var hours1: UIView!
    @IBOutlet weak var hours2: UIView!
    @IBOutlet weak var hours3: UIView!
    @IBOutlet weak var hours4: UIView!
    @IBOutlet weak var minutes5: UIView!
    @IBOutlet weak var minutes10: UIView!
    @IBOutlet weak var minutes15: UIView!
    @IBOutlet weak var minutes20: UIView!
    @IBOutlet weak var minutes25: UIView!
    @IBOutlet weak var minutes30: UIView!
    @IBOutlet weak var minutes35: UIView!
    @IBOutlet weak var minutes40: UIView!
    @IBOutlet weak var minutes45: UIView!
    @IBOutlet weak var minutes50: UIView!
    @IBOutlet weak var minutes55: UIView!
    @IBOutlet weak var minutes1: UIView!
    @IBOutlet weak var minutes2: UIView!
    @IBOutlet weak var minutes3: UIView!
    @IBOutlet weak var minutes4: UIView!
    @IBOutlet var allViews: [UIView]!
    private var hours5Block: [UIView] { [hours5, hours10, hours15, hours20] }
    private var hours1Block: [UIView] { [hours1, hours2, hours3, hours4] }
    private var minutes5Block: [UIView] { [minutes5, minutes10, minutes15, minutes20, minutes25, minutes30, minutes35, minutes40, minutes45, minutes50, minutes55] }
    private var minutes1Block: [UIView] { [minutes1, minutes2, minutes3, minutes4] }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureComponents()
        updateInterface()
        synchronize()
    }
    
    func configureComponents() {
        allViews.forEach { (view) in
            view.layer.borderColor = UIColor.darkGray.cgColor
            view.layer.borderWidth = 3
        }
        secondsView.layer.cornerRadius = 25
        hours5.layer.cornerRadius = 10
        hours5.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        hours20.layer.cornerRadius = 10
        hours20.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        hours1.layer.cornerRadius = 10
        hours1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        hours4.layer.cornerRadius = 10
        hours4.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        minutes5.layer.cornerRadius = 10
        minutes5.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        minutes55.layer.cornerRadius = 10
        minutes55.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        minutes1.layer.cornerRadius = 10
        minutes1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        minutes4.layer.cornerRadius = 10
        minutes4.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    }
    
    @objc func updateInterface() {
        let clock = Clock(date: Date())
        secondsView.backgroundColor = clock.second.colorForLamp()
        for (index, view) in hours5Block.enumerated() {
            view.backgroundColor = clock.multiHour.colorForLamp(at: index + 1)
        }
        for (index, view) in hours1Block.enumerated() {
            view.backgroundColor = clock.singleHour.colorForLamp(at: index + 1)
        }
        for (index, view) in minutes5Block.enumerated() {
            view.backgroundColor = clock.multiMinute.colorForLamp(at: index + 1)
        }
        for (index, view) in minutes1Block.enumerated() {
            view.backgroundColor = clock.singleMinute.colorForLamp(at: index + 1)
        }
    }
    
    // Schedules the timer to run as close as possible to the next second
    // This way, regardless of when the app is started, the interface will be updated when the system clock's seconds change
    func synchronize() {
        guard let currentMiliseconds = Date().component(.milisecond) else {
            scheduleTimer()
            return
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + (1 - Double(currentMiliseconds)/1000.0)) {
            self.updateInterface()
            self.scheduleTimer()
        }
    }
    
    func scheduleTimer() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateInterface), userInfo: nil, repeats: true)
    }
}

