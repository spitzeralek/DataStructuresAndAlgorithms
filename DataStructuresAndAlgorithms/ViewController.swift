//
//  ViewController.swift
//  DataStructuresAndAlgorithms
//
//  Created by Alek Spitzer
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var list = LinkedList<Int>()
        list.push(2)
        list.push(3)
        list.push(22)
        
        
        print(list)
        
    }


}

