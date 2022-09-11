//
//  PokemonView2Controller.swift
//  Pokemons
//
//  Created by Mariana on 9/09/22.
//

import UIKit
class PokemonsView2Controller: UIViewController {
    
    @IBOutlet weak var collectionViewPokemon: UICollectionView!
    var teamPokemons: TeamPokemons!
    var pokemons = [Pokemon]()
    var pokemon: Pokemon!
    var specie: Specie!
    var species = [Specie]()
    var pokemonDetailsController = PokemonDetailsController()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewPokemon.dataSource = self
        collectionViewPokemon.delegate = self
        collectionViewPokemon.collectionViewLayout = UICollectionViewFlowLayout()
    }
    override func viewDidAppear(_ animated: Bool) {
       reload()
    }
    @objc func reload()
    {
        getPokemonList()
    }
    func getPokemonList()
    {
        //losentimosView.isHidden = true
        ProgressView.shared.show(view: self.view)
        Networking.shared.getPokemonList{ [self] (response) in
            
            ProgressView.shared.dismiss()
            if response.result.isSuccess
            {
                do
                {
                 //   try self.pokemons = JSONDecoder().decode([Pokemon].self, from: response.data!)
                   // self.initPokemonsTableView()
                    let teamPokemomData = try JSONDecoder().decode(TeamPokemons.self, from: response.data!)
                    self.species = teamPokemomData.results!
                    self.initPokemonsCollectionView()
                }
                catch
                {
                    print(error)
                   
                }
            }
            else
            {
        
            }
        }
        
    }
    func initPokemonsCollectionView() {
        collectionViewPokemon.delegate = self
        collectionViewPokemon.dataSource = self
        collectionViewPokemon.reloadData()
        let indexPath = self.collectionViewPokemon.indexPathsForSelectedItems?.last ?? IndexPath(item: 0, section: 0)
        self.collectionView(self.collectionViewPokemon, didSelectItemAt: indexPath)
        self.collectionViewPokemon.selectItem(at: indexPath, animated: false, scrollPosition: UICollectionView.ScrollPosition.centeredHorizontally)
    }
}
extension PokemonsView2Controller: UICollectionViewDelegate, UICollectionViewDataSource
{

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return species.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PokemonCollectionViewCell", for: indexPath) as! PokemonCollectionViewCell
        cell.setCell(specie: species[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        specie = species[indexPath.row]
        pokemonDetailsController.initDetails(name: species[indexPath.row].name ?? "", url: species[indexPath.row].url!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               pokemonDetailsController = segue.destination as! PokemonDetailsController
              //  pokemonsView2Controller = segue.destination as! PokemonsView2Controller
            
 
    }
    
}
extension PokemonsView2Controller: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}




