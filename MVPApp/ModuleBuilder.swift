//
//  ModuleBuilder.swift
//  MVPApp
//
//  Created by Ваге Базикян on 06.07.2021.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModuleBuider: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "Vahe", lastName: "Bazikian")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
    
    
}
