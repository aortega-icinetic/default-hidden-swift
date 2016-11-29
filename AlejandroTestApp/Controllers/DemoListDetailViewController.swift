//
//  DemoListDetailViewController.swift
//  AlejandroTestApp
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class DemoListDetailViewController: DataViewController<DataDBDSItem> {
    
    var didSetupConstraints = false
	
	var textLabel1: UILabel!
	var textLabel2: UILabel!
	var imageView3: UIImageView!
	var textLabel4: UILabel!
	var textLabel5: UILabel!
	var textLabel6: UILabel!
	var textLabel7: UILabel!
	var textLabel8: UILabel!
	

	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.DataDBDS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		
		
		textLabel1 = createLabel()
		addSubview(textLabel1)	
		
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		imageView3 = createImageView()
		addSubview(imageView3)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
		textLabel5 = createLabel()
		addSubview(textLabel5)	
		
		textLabel6 = createLabel()
		addSubview(textLabel6)	
		
		textLabel7 = createLabel()
		addSubview(textLabel7)	
		
		textLabel8 = createLabel()
		addSubview(textLabel8)	
		
		behaviors.append(ShareBehavior(dataViewController: self))
		behaviors.append(UpdateBehavior<DemoListFormViewController, DataDBDSItem>(dataViewController: self))
		behaviors.append(DeleteBehavior(dataViewController: self))

        for behavior in self.behaviors {
            behavior.load()
        }
		
		updateViewConstraints()
		
		loadData()
	}
    
    override func updateViewConstraints() {
        
        if !didSetupConstraints {
            
            didSetupConstraints = true
            setupConstraints()
        }
        super.updateViewConstraints()
    }

	func setupConstraints() {
        
        let views:[String: UIView] = [
            "scrollView": scrollView,
            "contentView": contentView,
			"textLabel1": textLabel1,
			"textLabel2": textLabel2,
			"imageView3": imageView3,
			"textLabel4": textLabel4,
			"textLabel5": textLabel5,
			"textLabel6": textLabel6,
			"textLabel7": textLabel7,
			"textLabel8": textLabel8,
        ]
        
        let metrics:[String: CGFloat] = [
            "zero": Dimens.Margins.none,
            "margin": Dimens.Margins.large,
            "buttonSize": Dimens.Sizes.small
        ]
		
		contentView.removeConstraints(contentConstraints)
        scrollView.removeConstraints(scrollConstraints)
        view.removeConstraints(mainConstraints)
		
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
		contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView(==scrollView)]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		imageView3.translatesAutoresizingMaskIntoConstraints = false
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageView3]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        contentConstraints.append(NSLayoutConstraint(item: imageView3,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: contentView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
		textLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel5.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel5]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel6.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel6]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel7.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel7]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel8.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel8]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[textLabel1]-margin-[textLabel2]-margin-[imageView3]-margin-[textLabel4]-margin-[textLabel5]-margin-[textLabel6]-margin-[textLabel7]-margin-[textLabel8]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension DemoListDetailViewController: DataResponse {

    func success() {
        
        navigationItem.title = ""
        
 		textLabel1.text = item?.text
		
		textLabel2.text = String(int: item?.integer)
		
		imageView3.loadImage(datasource.imagePath(item?.picture), containerView: view)
		
		textLabel4.text = String(double: item?.dataField0)
		
		textLabel5.text = String(date: item?.date)
		
		textLabel6.text = String(datetime: item?.dateTime)
		
		textLabel7.text = String(bool: item?.dataField1)
		
		textLabel8.text = String(geoPoint: item?.location)
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


