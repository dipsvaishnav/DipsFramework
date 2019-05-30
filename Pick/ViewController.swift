//
//  ViewController.swift
//  Pick
//
//  Created by mac305 on 24/05/19.
//  Copyright © 2019 Deepak Vaishnav. All rights reserved.
//

import UIKit
import DipsPicker
import DipsListPicker
class ViewController: UIViewController {
  @IBOutlet weak var img_pick: UIImageView!
    var picker = ColorPickerList()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnImageTapped(_ sender: UIButton)
    {
            DispatchQueue.main.async
            {
                ImagePickerManager().pickImage(self){ image in
            self.img_pick.image = image
            }
        }
    }
    
    @IBAction func btnContactTapped(_ sender: UIButton) {
 
        
        
        picker.pickList(self, Title: "Select Item", array:["Acura","Ariel","Audi","BAC","Bear","BMW","Bugatti","Acura","Ariel","Audi","BAC","Bear","BMW","Bugatti","Acura","Ariel","Audi","BAC","Bear","BMW","Bugatti"]){ name,index  in
            print("My name =\(name)")
            print(index)
            sender.setTitle(name, for: .normal)


        }
    }
}

