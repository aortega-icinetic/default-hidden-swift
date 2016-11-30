//
//  StringFilterField.swift
//  AlejandroTestApp
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class StringFilterField: StringField {
    
    var datasource: Datasource!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(datasource: Datasource, name: String, label: String, readOnly: Bool = false, value: AnyObject?) {
        super.init(name: name, label: label, required: false, readOnly: readOnly , value: value)
        self.datasource = datasource
    }
}

extension StringFilterField: FilterField {
    
    func filter() -> Filter? {
        
        guard let value = value else {
            return nil
        }
        
        return datasource.datasourceFilter.create(name, string: value as? String)
    }
}
