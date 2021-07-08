//
//  MainPresenter.swift
//  MVPApp
//
//  Created by Ваге Базикян on 06.07.2021.
//

import Foundation

//MARK:- OutputProtocol
protocol MainViewProtocol: AnyObject {
    func setGreeing(greeting: String)
}

//MARK:- InputProtocol
protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)
    func showGreein()
}

class MainPresenter: MainViewPresenterProtocol {
    
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreein() {
        let greeting = person.firstName + " " + person.lastName
        self.view.setGreeing(greeting: greeting)
    }
}
