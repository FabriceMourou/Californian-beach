//
//  seashoreManager.swift
//  Californian beach
//
//  Created by Fabrice Mourou on 30/04/2020.
//  Copyright © 2020 Fabrice Mourou. All rights reserved.
//

import Foundation



// MARK: - Internal

// MARK: Properties - Internal

class SeashoreManager {
    
    
    let vacationers: [Vacationer] = [
        Vacationer(name: "Matheus", sunTanning: 40),
        Vacationer(name: "Beatriz", sunTanning: 31),
        Vacationer(name: "Helena", sunTanning: 27)
    ]
    
    let beachName = Beach(
        name: "Copacabana 🇧🇷 🏝",
        seaWaterToday: "claire et limpide 👌🏽 ",
        seaWaterTemperature: 20,
        skyColor: "🔵 bleu azur 🔵"
    )
    
    // MARK:  Internal
    
    // MARK: Methods - Internal
    
    init(name: String, numberOfTatoos: Int) {
        self.name = name
        self.numberOfTatoos = numberOfTatoos
        
    }
    func startNewDay() {
        
        sayHello()
        giveNewsOfTheDay()
        isHeOntheBeach()
        isThereRedFlag()
        introduceVacationers()
        defineBeachToy()
        isReadyToSwim()
        isReadyToSail()
        isReadyToSurf()
    }
    
    // MARK: - Private
    
    // MARK: Properties - Private
    
    private let name: String
    private let numberOfTatoos: Int
    private var vacationer: [Vacationer] = []
    
    // MARK: Methods - Private
    
    private func sayHello() {
        print("Bonjour à tous ! Je suis \(name) 🧜🏻‍♂️ ")
        print("N'ayez pas peur ! J'ai \(numberOfTatoos) tatouages 🧿 !")
        print("Je vais vous aider à passer une bonne journée !!")
        print()
    }
    
    
    private func giveNewsOfTheDay() {
        print("Le ciel est \(beachName.skyColor) et la température de l'eau 🌊 est de \(beachName.seaWaterTemperature)°C")
        print ()
    }
    
    private func isHeOntheBeach() {
        if vacationers.isEmpty {
            print("Il n'y a personne sur la plage de \(beachName.name) !")
        } else {
            print("Les vacanciers 🏊🏼‍♀️ sont arrivés sur \(beachName.name) ")
            print()
            print("Vous êtes \(vacationers.count) personnes aujourd'hui sur notre plage")
            print("l'eau est \(beachName.seaWaterToday) !" )
        }
    }
    
    private func isThereRedFlag() {
        if beachName.seaWaterTemperature <= 15 {
            print()
            print("❌ Le drapeau est rouge ❌ !")
            print()
        } else {
            print("✅ Le drapeau est vert ✅ !")
            
        }
    }
    
    private func introduceVacationers() {
        if vacationers.isEmpty {
            print("Tous les matelas sont libres sur la plage de \(beachName.name.uppercased()) !")
        } else {
            print()
            print("Qui nous accompagne aujourd'hui sur 🔆\(beachName.name.uppercased())🔆 ?")
            print()
            print("\(vacationers[2].name) 🚴🏽 Vous êtes resplandissante !")
            print("Votre indice de bronzage est de \(vacationers[2].sunTanning)")
            print()
            print("\(vacationers[1].name) 🧘🏾‍♂️ Je vous trouve en grande forme !")
            print("Votre indice de bronzage est de \(vacationers[1].sunTanning)")
            print()
            print("\(vacationers[0].name) 🤸🏼‍♂️ Quelle souplesse !")
            print("Votre indice de bronzage est de \(vacationers[0].sunTanning), Attention au 🌞 ! Protegez vous !")
        }
        if beachName.seaWaterTemperature <= 15 {
            print()
            print("Aujourd'hui sur la plage de \(beachName.name), la petite laine est de rigueur ⛸ !")
        } else {
            print("")
        }
    }
    
    private func isReadyToSurf() {
        if beachName.seaWaterTemperature <= 15 {
            print("La température de l'eau est de \(beachName.seaWaterTemperature)°C !!! ❄️ ")
            if vacationers.isEmpty {
                print()
            } else {
                print("\(vacationers[0].name) a toujours sa combinaison de plongée !🤿 ")
                print()
            }
        } else {
            if vacationers.capacity >= 1{
                print()
                print (" 🏄🏼‍♀️ Grand concours de surf ! 🏄🏾")
                print("Une magnifique coupe à gagner ! 🏆")
                print()
                print("Qui veut se jeter à l'eau ?")
                print()
                
                for id in vacationers {
                    print("\(id.name)? :")
                    if let input = readLine() {
                        if input == "oui"{
                            print("C'est \(input) pour \(id.name) 🤘🏽! ")
                        }  else  {
                            print("C'est \(input) pour \(id.name), La péche c'est plus rigolo ! 🎣  ")
                            //
                        }
                    }
                }
            } else {
                print("Oh non ... il n'y a personne pour le grand concours de surf ! 🏄🏾 ")
            }
        }
        if vacationers.capacity < 1 || beachName.seaWaterTemperature <= 15{
            print()
            print("NO SURF TODAY ! 🌊")
            print()
        } else {
            print("GO TO SURF ! 🏄🏾 🌊")
            print()
        }
    }
    
    func defineBeachToy(){
        wantToPlayOnTheBeach(frisbee: "🥏 Le frisbee ?", beachBall: "🏐 Un volley ?", plasticBoat: "⛵️ ou s'amuser avec son petit bateau ?")
    }
    
    func wantToPlayOnTheBeach(frisbee: String, beachBall: String, plasticBoat: String) {
        print()
        if vacationers.isEmpty {
            print("Nous vous attendons !")
            print("Venez me tenir compagnie 💔 !")
        } else {
            print("🔆 \(beachName.name.uppercased())!!! 🔆 ")
            print(" choisissez vos jeux :")
            print()
            print("\(frisbee)")
            print("\(beachBall)")
            if beachName.seaWaterTemperature <= 15{
                print("🛹 Du skate avec \(name) ?")
            }else {
                print("\(plasticBoat)")
            }
        }
    }
    
    
    func isReadyToSwim() {
        if beachName.seaWaterTemperature <= 15{
            print()
            
            if vacationers.isEmpty {
                print()
            } else {
                print("🏊🏼‍♀️ Nager ? Vraiment ❄️ ? ")
                print("\(vacationers[0].name) peut te prêter sa combi 🤿 ... ")
            }
        }else {
            if vacationers.isEmpty {
                print()
            } else {
                print()
                print("Nager 🏊🏼‍♀️ ? Vous pouvez y aller les yeux fermés, l'eau est \(beachName.seaWaterToday)")
            }
        }
    }
    
    func isReadyToSail() {
        let sailorName = "⚓️ Guilherme ⚓️"
        
        if vacationers.isEmpty {
            print()
        } else {
            print()
            print("Envie de prendre le large 🛳 ? \(sailorName) va vous y ammener !")
        }
        
        
    }
    
    
}

