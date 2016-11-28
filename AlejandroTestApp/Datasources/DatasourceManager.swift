//
//  DatasourceManager.swift
//  AlejandroTestApp
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class DatasourceManager {

	static let sharedInstance = DatasourceManager()
	
	
	lazy var DataDBDS: CloudDatasource<DataDBDSItem> = {
    
        return CloudDatasource<DataDBDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.DataDBDS.resource,
                                             apikey: DatasourceConfig.Cloud.DataDBDS.apiKey,
                                             searchableFields: [DataDBDSItemMapping.text]) 
    }()
	
}

