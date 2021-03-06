//
//  VideoView.swift
//  Pipe
//
//  Created by Daniel Kim on 8/14/19.
//  Copyright © 2019 Daniel Kim. All rights reserved.
//

import UIKit

class Newscard: UIView {
    
    let accessoryView = UIView()
    let titleLabel = UILabel()
    let previewImageView = UIImageView()
    let creatorLabel = UILabel()
    let timeLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // setupView()
    }
    
    //initWithCode to init view from xib or storyboard
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // setupView()
    }
    
    override func layoutSubviews() {
        setupView()
    }
    
    //common func to init our view
    private func setupView() {
        let parentWidth = self.frame.width
        let parentHeight = self.frame.height
        
        print("Debug: ", parentWidth)
        
        let padding = 20.0
        let accessoryPadding = 10.0
        
        let previewImageViewHeight = parentHeight * (189/298)
        let previewImageViewWidth = parentWidth
        let accessoryViewHeight = parentHeight * (109/298)
        let accessoryViewWidth = parentWidth
        // Setting Macro views
        previewImageView.frame = CGRect(x: 0, y: 0, width: previewImageViewWidth, height: previewImageViewHeight)
        accessoryView.frame = CGRect(x: 0, y: previewImageViewHeight, width: accessoryViewWidth, height: accessoryViewHeight)
        previewImageView.image = UIImage(named: "newYorkFlip.png")
        accessoryView.backgroundColor = UIColor.white

        // Setting title Label
        let titleLabelWidth = accessoryViewWidth * (290/335)
        let titleLabelHeight = accessoryViewHeight * (40/109)
        let titleLabelX = accessoryViewWidth * (16/335)
        let titleLabelY = accessoryViewHeight * (13/109)
        titleLabel.frame = CGRect(x: titleLabelX, y: titleLabelY, width: titleLabelWidth, height: titleLabelHeight)
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        titleLabel.text = "3 Things You Should Never Do In Debates"
        titleLabel.textColor = UIColor.black
        titleLabel.sizeThatFits(CGSize(width: titleLabelWidth, height: titleLabelHeight))
        titleLabel.numberOfLines = 2
        titleLabel.lineBreakMode = .byWordWrapping
        //titleLabel.preferredMaxLayoutWidth = CGFloat(titleLabelWidth)
        titleLabel.textAlignment = .left
        
        // Setting creator label
        let creatorLabelWidth = accessoryViewWidth * (260/335)
        let creatorLabelHeight = accessoryViewHeight * (18/109)
        let creatorLabelX = titleLabelX
        let creatorLabelYPadding = CGFloat(2)
        let creatorLabelY = titleLabelY+titleLabelHeight+creatorLabelYPadding
        creatorLabel.font = UIFont.systemFont(ofSize: 14)
        creatorLabel.text = "Andrew Yun"
        creatorLabel.textColor = UIColor.gray
        creatorLabel.frame = CGRect(x: creatorLabelX, y: creatorLabelY, width: creatorLabelWidth, height: creatorLabelHeight)
        
        // Setting time label
        let timeLabelWidth = previewImageViewWidth * (38/335)
        let timeLabelHeight = previewImageViewHeight * (18/189)
        let timeLabelPadding = CGFloat(5)
        let timeLabelX = previewImageViewWidth - timeLabelPadding - timeLabelWidth
        let timeLabelY = previewImageViewHeight - timeLabelPadding - timeLabelHeight
        timeLabel.font = UIFont.systemFont(ofSize: 12)
        timeLabel.text = "12:18"
        timeLabel.textAlignment = .center
        timeLabel.textColor = UIColor.white
        timeLabel.frame = CGRect(x: timeLabelX, y: timeLabelY, width: timeLabelWidth, height: timeLabelHeight)
        timeLabel.backgroundColor = UIColor.black
        
        // Creating the lower information bar
        let infoBar = UIView()
        let infoBarPadding = CGFloat(5)
        let infoBarWidth = creatorLabelWidth
        let infoBarHeight = accessoryViewHeight * (18/109)
        let infoBarX = creatorLabelX
        let infoBarY = creatorLabelY + creatorLabelHeight + infoBarPadding
        infoBar.frame = CGRect(x: infoBarX, y: infoBarY, width: infoBarWidth, height: infoBarHeight)
        
        // Creating the star in the infobar
        let starImage = UIImageView()
        let starImageWH = infoBarHeight
        starImage.frame = CGRect(x: 0, y: 0, width: starImageWH, height: starImageWH)
        starImage.image = UIImage(named: "filledRatingIcon")
        infoBar.addSubview(starImage)
        
        // Creating the rating label
        let ratingLabelPadding = CGFloat(2)
        let ratingLabel = UILabel()
        let ratingLabelX = starImageWH + ratingLabelPadding
        let ratingLabelY = CGFloat(0)
        let ratingLabelWidth = infoBarWidth * (40/260)
        let ratingLabelHeight = starImageWH
        ratingLabel.font = UIFont.systemFont(ofSize: 14)
        ratingLabel.numberOfLines = 1
        ratingLabel.frame = CGRect(x: ratingLabelX, y: ratingLabelY, width: ratingLabelWidth, height: ratingLabelHeight)
        ratingLabel.text = "4.0"
        infoBar.addSubview(ratingLabel)
        
        // Creating the playImage
        let playImagePadding = CGFloat(2)
        let playImage = UIImageView()
        let playImageWH = infoBarHeight
        let playImageX = ratingLabelX + ratingLabelWidth + playImagePadding
        playImage.frame = CGRect(x: playImageX, y: 0, width: starImageWH, height: starImageWH)
        playImage.image = UIImage(named: "playedStatIcon")
        infoBar.addSubview(playImage)
        
        // Creating the statLabel
        let statLabelPadding = CGFloat(5)
        let statLabel = UILabel()
        let statLabelX = playImageX + playImageWH + statLabelPadding
        let statLabelWidth = infoBarWidth - statLabelX
        let statLabelHeight = infoBarHeight
        statLabel.font = UIFont.systemFont(ofSize: 14)
        statLabel.numberOfLines = 1
        statLabel.frame = CGRect(x: statLabelX, y: 0, width: statLabelWidth, height: statLabelHeight)
        statLabel.text = "52K * 2 months ago"
        infoBar.addSubview(statLabel)
        
        // Creating the moreButton
        let moreButton = UIButton()
        let moreButtonXPadding = accessoryViewWidth * (18/335)
        let moreButtonYPadding = accessoryViewHeight * (18/109)
        let moreButtonWidth = accessoryViewWidth * (10/335)
        let moreButtonHeight = accessoryViewHeight * (20/109)
        moreButton.setImage(UIImage(named: "moreIcon"), for: .normal)
        moreButton.frame = CGRect(x: accessoryViewWidth - moreButtonXPadding - moreButtonWidth, y: accessoryViewHeight - moreButtonYPadding - moreButtonHeight, width: moreButtonWidth, height: moreButtonHeight)
        
        addSubview(previewImageView)
        addSubview(accessoryView)
        accessoryView.addSubview(titleLabel)
        accessoryView.addSubview(creatorLabel)
        accessoryView.addSubview(infoBar)
        accessoryView.addSubview(moreButton)
        previewImageView.addSubview(timeLabel)
        
        // Adding a shadow with rounded corners
        self.previewImageView.roundCorners(corners: [UIRectCorner.topLeft, UIRectCorner.topRight], radius: 5)
        self.accessoryView.roundCorners(corners: [UIRectCorner.bottomLeft, UIRectCorner.bottomRight], radius: 5)

        let shadowView = UIView()
        shadowView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        shadowView.clipsToBounds = false
        shadowView.layer.backgroundColor = UIColor.clear.cgColor
        shadowView.backgroundColor = UIColor.clear
        
        let shadowSize: Double = 5
        
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: CGRect(x: -shadowSize/2, y: -shadowSize/2, width: Double(self.frame.size.width)+shadowSize, height: Double(self.frame.height)+shadowSize), cornerRadius: 5.0).cgPath
        shadowView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.11).cgColor
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = 4
        shadowView.layer.shadowOffset = CGSize(width: 0, height: 1)
        layer.bounds = self.bounds
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(shadowView)
        self.sendSubviewToBack(shadowView)

        /*
        // Adding a gradient to the layer
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor, UIColor.clear.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.locations = [0, 1]
        gradientLayer.frame = previewImageView.bounds
        previewImageView.layer.insertSublayer(gradientLayer, at: 0)
         */
        
        
        // Adding segue gesture recognizer
        //let gesture = UITapGestureRecognizer(target: self, action: #selector(segueTransport))
        //self.addGestureRecognizer(gesture)
    }
}

extension CALayer {
    func addShadow() {
        self.shadowOffset = .zero
        self.shadowOpacity = 1
        self.shadowRadius = 12
        self.shadowColor = UIColor.black.cgColor
        self.masksToBounds = false
        if cornerRadius != 0 {
            addShadowWithRoundedCorners()
        }
    }
    func roundCorners(radius: CGFloat) {
        self.cornerRadius = radius
        if shadowOpacity != 0 {
            addShadowWithRoundedCorners()
        }
    }
    private func addShadowWithRoundedCorners() {
        if let contents = self.contents {
            masksToBounds = false
            sublayers?.filter{ $0.frame.equalTo(self.bounds) }
                .forEach{ $0.roundCorners(radius: self.cornerRadius) }
            self.contents = nil
            if let sublayer = sublayers?.first,
                sublayer.name == "hi" {
                
                sublayer.removeFromSuperlayer()
            }
            let contentLayer = CALayer()
            contentLayer.name = "hi"
            contentLayer.contents = contents
            contentLayer.frame = bounds
            contentLayer.cornerRadius = cornerRadius
            contentLayer.masksToBounds = true
            insertSublayer(contentLayer, at: 0)
        }
    }
}

extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

extension NSLayoutConstraint {
    func constraintWithMultiplier(_ multiplier: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem!, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: multiplier, constant: self.constant)
    }
    
    func constraintWithConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        return NSLayoutConstraint(item: self.firstItem!, attribute: self.firstAttribute, relatedBy: self.relation, toItem: self.secondItem, attribute: self.secondAttribute, multiplier: self.multiplier, constant: constant)
    }
}

extension String {

    enum RegularExpressions: String {
        case phone = "^\\s*(?:\\+?(\\d{1,3}))?([-. (]*(\\d{3})[-. )]*)?((\\d{3})[-. ]*(\\d{2,4})(?:[-.x ]*(\\d+))?)\\s*$"
    }

    func isValid(regex: RegularExpressions) -> Bool { return isValid(regex: regex.rawValue) }
    func isValid(regex: String) -> Bool { return range(of: regex, options: .regularExpression) != nil }

    func onlyDigits() -> String {
        let filtredUnicodeScalars = unicodeScalars.filter { CharacterSet.decimalDigits.contains($0) }
        return String(String.UnicodeScalarView(filtredUnicodeScalars))
    }

    func makeACall() {
        guard   isValid(regex: .phone),
                let url = URL(string: "tel://\(self.onlyDigits())"),
                UIApplication.shared.canOpenURL(url) else { return }
        if #available(iOS 10, *) {
            UIApplication.shared.open(url)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
}
