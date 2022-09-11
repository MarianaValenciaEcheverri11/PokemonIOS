//
//  PokemonsViewController.swift
//  Pokemons
//
//  Created by Mariana on 8/09/22.
//

import UIKit
class PokemonsViewController: UIViewController {
    @IBAction func selectedChangeView(_ sender: UIButton)  {
        performSegue(withIdentifier: "PokemonsView2Controller", sender: self)
    }
    @IBOutlet weak var changeViewOutlet: UIButton!
    @IBOutlet weak var tableViewPokemon: UITableView!
    var pokemons = [Pokemon]()
    var pokemon: Pokemon!
    var teamPokemons: TeamPokemons!
    var specie: Specie!
    var species = [Specie]()
    var pokemonSeleccionado: String!
    var pokemonDetailsController = PokemonDetailsController()
    var pokemonsView2Controller = PokemonsView2Controller()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @objc func reload()
    {
        getPokemonList()
    }
    override func viewDidAppear(_ animated: Bool) {
        reload()
    }
    
    func getPokemonList()
    {
        ProgressView.shared.show(view: self.view)
        Networking.shared.getPokemonList{ [self] (response) in
            
            ProgressView.shared.dismiss()
            if response.result.isSuccess
            {
                do
                {
                    let teamPokemomData = try JSONDecoder().decode(TeamPokemons.self, from: response.data!)
                    self.species = teamPokemomData.results!
                    self.initPokemonsTableView()
                }
                catch
                {
                    print(error)
                   
                }
            }
        }
        
    }
    func initPokemonsTableView() {
        tableViewPokemon.tableFooterView = UIView(frame: .zero)
        tableViewPokemon.delegate = self
        tableViewPokemon.dataSource = self
        tableViewPokemon.reloadData()
    }
}
    extension PokemonsViewController:UITableViewDelegate, UITableViewDataSource
    {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return species.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell") as! PokemonTableViewCell
            cell.setCell(specie: species[indexPath.row])
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            specie = species[indexPath.row]
            pokemonSeleccionado = species[indexPath.row].name
            pokemonDetailsController.initDetails(name: pokemonSeleccionado, url: species[indexPath.row].url!)
        }
        
        func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            let animation = AnimationFactory.makeSlideIn(duration: 0.5, delayFactor: 0.05)
            let animator = Animator(animation: animation)
            animator.animate(cell: cell, at: indexPath, in: tableView)
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "PokemonDetailsController"
            {
                pokemonDetailsController = segue.destination as! PokemonDetailsController
            }else{
                pokemonsView2Controller = segue.destination as! PokemonsView2Controller
            }

            
        }
        
    }
   
    
    

