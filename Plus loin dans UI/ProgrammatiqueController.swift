//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by Snoopy on 31/05/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    var  monPremierUIView: UIView?
    var monPremierLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        view.addSubview(monPremierUIView!)
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .left
        view.addSubview(monPremierLabel!)
    }

}
