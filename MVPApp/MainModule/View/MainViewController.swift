//
//  ViewController.swift
//  MVPApp
//
//  Created by Ваге Базикян on 06.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    
//MARK:-IBOutlet
    @IBOutlet weak var greateLable: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
//MARK:- IBAction
    @IBAction func didTapAction(_ sender: Any) {
        self.presenter.showGreein()
        
    }
}

extension MainViewController: MainViewProtocol {
    func setGreeing(greeting: String) {
        self.greateLable.text = greeting
    }
    
    
}
