//
//  ViewController.swift
//  todayUserDefaults
//
//  Created by Nova Arisma on 05/07/19.
//  Copyright © 2019 Nova Arisma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//connect dulu
    @IBOutlet weak var wordTF: UITextField!
    @IBOutlet weak var wordLabel: UILabel!
    var userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
      wordLabel.text = userDef.string(forKey: "word")
    }

    @IBAction func saveButton(_ sender: Any) {
        userDef.set(wordTF.text, forKey: "word" )
        wordLabel.text = wordTF.text
        
        let path: [AnyObject] = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true) as [AnyObject]
        
        print(path)
        
        //cek penyimpanan di termilar, copy /Users/novaarisma95/Library/Developer/CoreSimulator/Devices/71339183-96BD-4D45-B49B-5294B924D348/data/Containers/Data/Application/5F464CE0-CBF8-4A6A-BB36-EC775FDED4E5/Library
    }
    
}

