//
//  ConfigurationOptions.swift
//  20201030_iBuy
//
//  Created by Daniel Nascimento on 31/10/20.
//

import Foundation

class ConfigurationOptions {
    var optionName: String
    
    init(optionName: String) {
        self.optionName = optionName
    }
    
    func setupOptions() -> [ConfigurationOptions] {
        var options = [ConfigurationOptions]()
        let optionAvaliar = ConfigurationOptions(optionName: "Avaliar app")
        let optionSuporte = ConfigurationOptions(optionName: "Suporte")
        let optionRelatar = ConfigurationOptions(optionName: "Relatar um problema por email")
        options.append(optionAvaliar)
        options.append(optionSuporte)
        options.append(optionRelatar)
        return options
    }
}
