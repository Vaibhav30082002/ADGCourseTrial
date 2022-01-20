//
//  ExpandedViewController.swift
//  ADGCoureApp
//
//  Created by Vaibhav Shah on 20/01/22.
//

import UIKit
import BetterSegmentedControl

class ExpandedViewController: UIViewController {

    @IBOutlet var courseLongLabel: UILabel!
    @IBOutlet var courseCode: UILabel!
    @IBOutlet var embeddedInfo: UILabel!
    
    @IBOutlet var courseInfoTableView: UITableView!
    @IBOutlet var segmentView: UIView!
    
    let devSegmentControl = BetterSegmentedControl(
            frame: CGRect(x: 16, y: 0, width: 280, height: 32),
            segments: LabelSegment.segments(withTitles: ["Module", "Textbooks", "References"],
                                            normalFont: UIFont(name: "IBMPlexMono-Regular", size: 12),
                                            normalTextColor: UIColor.systemGray,
                                            selectedFont: UIFont(name: "IBMPlexMono-Medium", size: 12),
                                            selectedTextColor: UIColor.label),
            options:[.backgroundColor(.clear),
                     .indicatorViewBackgroundColor(UIColor(named: "buttonGreen") ?? .lightGray),
                     .cornerRadius(15),
                     .animationSpringDamping(1.0)])
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        segmentView.backgroundColor = .clear
        segmentView.addSubview(devSegmentControl)
        devSegmentControl.setIndex(0)
        devSegmentControl.isSelected = true
    }
    
    
    


}


//MARK: - Extension for UIView

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
