//
//  PoseModelViewController.swift
//  xgo
//
//  Created by Mac on 2023/2/15.
//

import UIKit

class PoseModelViewController: BaseViewController {
    
    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var xAxisLabel: UILabel!
    @IBOutlet weak var yAxisLabel: UILabel!
    @IBOutlet weak var zAxisLabel: UILabel!
    @IBOutlet weak var xAxisRollLabel: UILabel!
    @IBOutlet weak var yAxisRollLabel: UILabel!
    @IBOutlet weak var zAxisRollLabel: UILabel!
    
    @IBOutlet weak var xAxisContent: UIView!
    @IBOutlet weak var yAxisContent: UIView!
    @IBOutlet weak var zAxisContent: UIView!
    @IBOutlet weak var xAxisRollContent: UIView!
    @IBOutlet weak var yAxisRollContent: UIView!
    @IBOutlet weak var zAxisRollContent: UIView!
    @IBOutlet weak var resetButton: UIButton!
    
    fileprivate var xAxisSlider: CenterStarSlider!
    fileprivate var yAxisSlider: CenterStarSlider!
    fileprivate var zAxisSlider: CenterStarSlider!
    fileprivate var xAxisRollSlider: CenterStarSlider!
    fileprivate var yAxisRollSlider: CenterStarSlider!
    fileprivate var zAxisRollSlider: CenterStarSlider!
    
    @IBOutlet weak var widthView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView() {
        
        postButton.setHorizontalGradientBackground(colorLeft: UIColor(hexString: "#3E67F7")!, colorRight: UIColor(hexString: "#349AFF")!, forState: .normal)
        
        xAxisSlider = CenterStarSlider(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.4 * 0.88, height: 30))
        xAxisSlider.fillLineColor = UIColor.orange
        xAxisContent.addSubview(xAxisSlider)
        
        yAxisSlider = CenterStarSlider(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.4 * 0.88, height: 30))
        yAxisSlider.fillLineColor = UIColor.green
        yAxisContent.addSubview(yAxisSlider)
        
        zAxisSlider = CenterStarSlider(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.4 * 0.88, height: 30))
        zAxisSlider.fillLineColor = UIColor.blue
        zAxisContent.addSubview(zAxisSlider)
        
        xAxisRollSlider = CenterStarSlider(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.4 * 0.88, height: 30))
        xAxisRollSlider.fillLineColor = UIColor.orange
        xAxisRollContent.addSubview(xAxisRollSlider)
        
        yAxisRollSlider = CenterStarSlider(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.4 * 0.88, height: 30))
        yAxisRollSlider.fillLineColor = UIColor.green
        yAxisRollContent.addSubview(yAxisRollSlider)
        
        zAxisRollSlider = CenterStarSlider(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width * 0.4 * 0.88, height: 30))
        zAxisRollSlider.fillLineColor = UIColor.blue
        zAxisRollContent.addSubview(zAxisRollSlider)
        
        
        resetButton.layer.cornerRadius = 17.5
        resetButton.layer.masksToBounds = true
        resetButton.setHorizontalGradientBackground(colorLeft: UIColor(hexString: "#3E67F7")!, colorRight: UIColor(hexString: "#349AFF")!, forState: .normal)
        
    }
    
    @IBAction func backAction(serder: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func settingAction(serder: UIButton) {
        let setVC = RadioControllSettingViewController.loadFromStoryboard("Main")
        setVC.modalPresentationStyle = .overCurrentContext
        self.present(setVC, animated: false)
    }
    
    @IBAction func motionAction(serder: UIButton!) {
        self.view.isHidden = true
    }
    
    @IBAction func resetButton(_ sender: Any) {
        xAxisSlider.reset()
        yAxisSlider.reset()
        zAxisSlider.reset()
        xAxisRollSlider.reset()
        yAxisRollSlider.reset()
        zAxisRollSlider.reset()
    }
}
