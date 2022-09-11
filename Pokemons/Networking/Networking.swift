//
//  Networking.swift
//  Pokemons
//
//  Created by Mariana on 7/09/22.
//

import Foundation
import SwiftyJSON
import Alamofire
class Networking {
    static let shared = Networking()
    private init(){}
    
    func getPokemonList(completion: @escaping(DataResponse<Any>)->Void)
    {
        let url = Apis.baseUrl + "pokemon?limit=1000&offset=0"
        Alamofire.request(url).responseJSON { (response) in
            completion(response)
        }
        
    }
    func getPokemon(url: String, completion: @escaping(DataResponse<Any>)->Void)
    {
        let url = url
        Alamofire.request(url).responseJSON { (response) in
            completion(response)
           
      
        }
    }

    
}

