//
//  DataDBDSItem.swift
//  AlejandroTestApp
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum DataDBDSItemMapping {
	static let text = "text"
	static let integer = "integer"
	static let picture = "picture"
	static let dataField0 = "dataField0"
	static let date = "date"
	static let dateTime = "dateTime"
	static let dataField1 = "dataField1"
	static let location = "location"
	static let id = "id"
}

public class DataDBDSItem : Item {
	
	var text : String?
	var integer : Int?
	var picture : String?
	var dataField0 : Double?
	var date : NSDate?
	var dateTime : NSDate?
	var dataField1 : Bool?
	var location : GeoPoint?
	var id : String?
	
	// MAR: - <Item>

	public var identifier: AnyObject? {
		guard let identifier = id else {
			return ""
		}
		return identifier
	}
	
	required public init?(dictionary: NSDictionary?) {
    
        retrieve(dictionary)
    }
	
	public func retrieve(dictionary: NSDictionary?) {
     
        guard let dic = dictionary else {
            return
        }
        
 		text = dic[DataDBDSItemMapping.text] as? String
		
		integer = dic[DataDBDSItemMapping.integer] as? Int
		
		picture = dic[DataDBDSItemMapping.picture] as? String
		
		dataField0 = dic[DataDBDSItemMapping.dataField0] as? Double
		
		date = NSDate.date(dic[DataDBDSItemMapping.date] as? String)
		
		dateTime = NSDate.date(dic[DataDBDSItemMapping.dateTime] as? String)
		
		dataField1 = dic[DataDBDSItemMapping.dataField1] as? Bool
		
			
		location = GeoPoint(dictionary: dic[DataDBDSItemMapping.location] as? NSDictionary)
		
		id = dic[DataDBDSItemMapping.id] as? String
		
	   
    }
}
	

