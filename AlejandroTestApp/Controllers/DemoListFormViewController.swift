//
//  DemoListFormViewController.swift
//  AlejandroTestApp
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class DemoListFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		
        let item = self.item as? DataDBDSItem
        
        
		let textField = StringField(name: DataDBDSItemMapping.text, label: "Text", required: false, value: item?.text)
        contentView.addSubview(textField)
		
		let integerField = IntegerField(name: DataDBDSItemMapping.integer, label: "Integer", required: false, value: item?.integer)
        contentView.addSubview(integerField)
		
		let pictureField = ImageField(name: DataDBDSItemMapping.picture, label: "Picture", required: false, viewController: self, value: crudService?.imagePath(item?.picture))
        contentView.addSubview(pictureField)
		
		let dataField0Field = DecimalField(name: DataDBDSItemMapping.dataField0, label: "Decimal", required: false, value: item?.dataField0)
        contentView.addSubview(dataField0Field)
		
		let dateField = DateField(name: DataDBDSItemMapping.date, label: "Date", required: false, value: item?.date)
        contentView.addSubview(dateField)
		
		let dateTimeField = DateTimeField(name: DataDBDSItemMapping.dateTime, label: "DateTime", required: false, value: item?.dateTime)
        contentView.addSubview(dateTimeField)
		
		let dataField1Field = TristateField(name: DataDBDSItemMapping.dataField1, label: "Boolean", value: item?.dataField1)
        contentView.addSubview(dataField1Field)
		
		let locationField = LocationField(name: DataDBDSItemMapping.location, label: "Location", required: false, viewController: self, value: item?.location)
        contentView.addSubview(locationField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

