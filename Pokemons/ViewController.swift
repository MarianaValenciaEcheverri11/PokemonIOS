//
//  ViewController.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        openPokemons()
        
    }
    func openPokemons()
       {
           self.dismiss(animated: false) {
               let vc = UIStoryboard(name: "CataloguePokemons", bundle: nil).instantiateViewController(withIdentifier: "PokemonsViewController")
               vc.modalPresentationStyle = .fullScreen
               self.present(vc, animated: true, completion: nil)
           }
       }


}

