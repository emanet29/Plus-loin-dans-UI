//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by Snoopy on 31/05/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    var monPremierUIView: UIView?
    var monPremierLabel : UILabel?
    var monPremierBouton: UIButton?
    var maPremierIV: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        scroll.addSubview(monPremierUIView!)
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Coucou je suis un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .left
        scroll.addSubview(monPremierLabel!)
        
        monPremierBouton = UIButton(frame: CGRect(x: view.frame.width/2 - 75, y: monPremierLabel!.frame.maxY + 220, width: 150, height: 40))
        monPremierBouton?.setTitle("Appuyez", for: .normal)
        monPremierBouton?.tintColor = UIColor.red
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        scroll.addSubview(monPremierBouton!)
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectICV = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremierIV = UIImageView(frame: rectICV)
        //maPremierIV?.image = #imageLiteral(resourceName: "codabee")
        maPremierIV?.image = UIImage(named: "codabee")
        maPremierIV?.contentMode = .scaleAspectFill
        maPremierIV?.clipsToBounds = true
        maPremierIV?.layer.cornerRadius = maPremierIV!.frame.width / 2
        scroll.addSubview(maPremierIV!)
        
        //view.sendSubview(toBack: maPremierIV!)
        scroll.bringSubview(toFront: monPremierBouton!)
        
        maPremierIV?.isUserInteractionEnabled = true
        maPremierIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuye)))
        
        let couleurs: [UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (maPremierIV?.frame.maxY)!
        
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: view.frame.width, height: 100))
            vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maximum + 100)
    }
    
    @objc func imageAppuye() {
        print("Image touchée")
    }
    
    @objc func boutonAppuye() {
        print("Tu as bien appuyé !")
        
    }

}









