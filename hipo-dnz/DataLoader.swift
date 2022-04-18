//
//  DataLoader.swift
//  hipo-dnz
//
//  Created by Deniz AKYİĞİT on 19.04.2022.
//

import Foundation

public class DataLoader {
    
    @Published var memberData = [MemberData] ()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "ehipo", withExtension: "json") {
            
            //do catch in case of an error
            do{
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([MemberData].self, from: data)
                
                self.memberData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        self.memberData = self.memberData.sorted(by: { $0.id < $1.id })//asc id sort
    }
}
