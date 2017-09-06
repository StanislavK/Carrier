//
//  CarrierInfoViewController.swift
//  Carrier
//
//  Created by StanislavK on 09/06/2017.
//  Copyright (c) 2017 StanislavK. All rights reserved.
//

import UIKit
import Carrier

class CarrierInfoViewController: UITableViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countryCodeLabel: UILabel!
    @IBOutlet weak var mobileCountryCodeLabel: UILabel!
    @IBOutlet weak var mobileNetworkCodeLabel: UILabel!
    @IBOutlet weak var allowsVOIPLabel: UILabel!
    @IBOutlet weak var radioTypeLabel: UILabel!
    @IBOutlet weak var networkGenerationLabel: UILabel!
    
    // MARK: - Private Properties
    
    fileprivate let carrier = Carrier()
    
    // MARK: - View Life-Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Carrier info - Example"
        carrier.delegate = self
        
        updateLabels(with: carrier)
    }
}

extension CarrierInfoViewController: CarrierDelegate {
    
    func carrierRadioAccessTechnologyDidChange() {
        print(#function)
        updateLabels(with: carrier)
    }
    
    func updateLabels(with carrier: Carrier) {
        nameLabel.text = carrier.carrierName ?? "--"
        countryCodeLabel.text = carrier.carrierIsoCountryCode ?? "--"
        mobileCountryCodeLabel.text = carrier.carrierMobileCountryCode ?? "--"
        mobileNetworkCodeLabel.text = carrier.carrierMobileNetworkCode ?? "--"
        allowsVOIPLabel.text = carrier.carrierAllowsVOIP ? "Yes": "No"
        radioTypeLabel.text = carrier.carrierRadioAccessTechnologyType ?? "--"
        networkGenerationLabel.text = carrier.carrierNetworkGeneratation ?? "--"
    }
}
