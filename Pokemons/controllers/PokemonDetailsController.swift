//
//  PokemonDetailsController.swift
//  Pokemons
//
//  Created by Mariana on 9/09/22.
//

import UIKit
class PokemonDetailsController: UIViewController {
    @IBOutlet weak var namePokemon: UILabel!
    
    @IBOutlet weak var descriptionPokemon: UILabel!
    
    @IBOutlet weak var abilitiesPokemon: UILabel!
    
    @IBOutlet weak var imagePokemon: UIImageView!
    
    
    @IBOutlet weak var tableViewAbilities: UITableView!
    
    var abilities: [Ability]!
    var ability: Ability!
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
      
    }

    override func viewDidAppear(_ animated: Bool) {
        //checkObligatoria()
    }
    func descargarImagen(url: String){
        imagePokemon?.kf.indicatorType = .activity
        imagePokemon?.kf.setImage(with: URL(string: url), options: [.transition(.fade(1)), .keepCurrentImageWhileLoading])
        if imagePokemon?.image == nil
       {
            imagePokemon?.image = UIImage(named: "pokemon")
        }
    }
    func initDetails(name: String, url: String){
        Networking.shared.getPokemon(url: Apis.baseUrl + "pokemon/" + name){ [self] (response) in
            ProgressView.shared.dismiss()
            if response.result.isSuccess
            {
                do
                {
         //   try self.pokemons = JSONDecoder().decode([Pokemon].self, from: response.data!)
           // self.initPokemonsTableView()
                    let pokemon = try JSONDecoder().decode(Pokemon.self, from: response.data!)
                    namePokemon?.text = "Name: " + (pokemon.name)!
                    descriptionPokemon?.text = "Height: " + (String(pokemon.height!)) + "     Weight: " + (String(pokemon.weight!))
                    abilitiesPokemon?.text = "Abilities : "
                    var numberPokemon = url.components(separatedBy: "pokemon/")
                    numberPokemon = numberPokemon[1].components(separatedBy: "/")
                    let url = Apis.imagePokemon + numberPokemon[0] + ".png"
                    descargarImagen(url: url )
                    abilities.self = pokemon.abilities
                    initAbilities()
                    
                }
                catch
                {
                    print(error)
                }
            }
        }
        
    }
    func initAbilities() {
        tableViewAbilities?.tableFooterView = UIView(frame: .zero)
        tableViewAbilities?.delegate = self
        tableViewAbilities?.dataSource = self
        tableViewAbilities?.reloadData()
    }
    
}
extension PokemonDetailsController:UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return abilities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AbilitiesPokemonViewCell") as! AbilitiesPokemonViewCell
        cell.setCell(nameAbility: abilities[indexPath.row].ability?.name ?? "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        ability = abilities[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let animation = AnimationFactory.makeSlideIn(duration: 0.5, delayFactor: 0.05)
        let animator = Animator(animation: animation)
        animator.animate(cell: cell, at: indexPath, in: tableView)
    }
    
}

