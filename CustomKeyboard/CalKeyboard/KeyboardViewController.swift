//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var normz: UIButton!
    @IBOutlet var hepi: UIButton!
    @IBOutlet var rlyHepi: UIButton!
    @IBOutlet var haha: UIButton!
    @IBOutlet var smirkz: UIButton!
    @IBOutlet var harteyez: UIButton!
    @IBOutlet var kissy: UIButton!
    @IBOutlet var anger: UIButton!
    @IBOutlet var tear: UIButton!
    @IBOutlet var WOWFEAR: UIButton!
    @IBOutlet var cuteStripe: UIButton!
    @IBOutlet var house: UIButton!
    @IBOutlet var stripe: UIButton!
    @IBOutlet var spot: UIButton!
    @IBOutlet var space: UIButton!
    @IBOutlet var enter: UIButton!
    @IBOutlet var back: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        normz.addTarget(self, action: "normz:", forControlEvents: .TouchUpInside)
        hepi.addTarget(self, action: "hepi:", forControlEvents: .TouchUpInside)
        rlyHepi.addTarget(self, action: "rlyHepi:", forControlEvents: .TouchUpInside)
        haha.addTarget(self, action: "haha:", forControlEvents: .TouchUpInside)
        smirkz.addTarget(self, action: "smirkz:", forControlEvents: .TouchUpInside)
        anger.addTarget(self, action: "anger:", forControlEvents: .TouchUpInside)
        harteyez.addTarget(self, action: "harteyez:", forControlEvents: .TouchUpInside)
        kissy.addTarget(self, action: "kissy:", forControlEvents: .TouchUpInside)
        tear.addTarget(self, action: "tear:", forControlEvents: .TouchUpInside)
        WOWFEAR.addTarget(self, action: "WOWFEAR:", forControlEvents: .TouchUpInside)
        cuteStripe.addTarget(self, action: "cuteStripe:", forControlEvents: .TouchUpInside)
        house.addTarget(self, action: "house:", forControlEvents: .TouchUpInside)
        stripe.addTarget(self, action: "stripe:", forControlEvents: .TouchUpInside)
        spot.addTarget(self, action: "spot:", forControlEvents: .TouchUpInside)
        space.addTarget(self, action: "space:", forControlEvents: .TouchUpInside)
        enter.addTarget(self, action: "enter:", forControlEvents: .TouchUpInside)
        back.addTarget(self, action: "back:", forControlEvents: .TouchUpInside)
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
    }

    func normz(sender: UIButton) {
        self.textDocumentProxy.insertText("normz")
    }
    
    func hepi(sender: UIButton) {
        self.textDocumentProxy.insertText("hepi")
    }
    
    func rlyHepi(sender: UIButton) {
        self.textDocumentProxy.insertText("rlyHepi")
    }
    
    func haha(sender: UIButton) {
        self.textDocumentProxy.insertText("haha")
    }
    
    func smirkz(sender: UIButton) {
        self.textDocumentProxy.insertText("smirkz")
    }
    
    func anger(sender: UIButton) {
        self.textDocumentProxy.insertText("anger")
    }
    
    func harteyez(sender: UIButton) {
        self.textDocumentProxy.insertText("harteyez")
    }
    
    func kissy(sender: UIButton) {
        self.textDocumentProxy.insertText("kissy")
    }
    
    func tear(sender: UIButton) {
        self.textDocumentProxy.insertText("tear")
    }
    
    func WOWFEAR(sender: UIButton) {
        self.textDocumentProxy.insertText("WOWFEAR")
    }
    
    func cuteStripe(sender: UIButton) {
        self.textDocumentProxy.insertText("cuteStripe")
    }
    
    func house(sender: UIButton) {
        self.textDocumentProxy.insertText("house")
    }
    
    func stripe(sender: UIButton) {
        self.textDocumentProxy.insertText("stripe")
    }
    
    func spot(sender: UIButton) {
        self.textDocumentProxy.insertText("spot")
    }
    
    func space(sender: UIButton) {
        self.textDocumentProxy.insertText(" ")
    }
    
    func enter(sender: UIButton) {
        self.textDocumentProxy.insertText("\n")
    }
    
    func back(sender: UIButton) {
        self.textDocumentProxy.deleteBackward()
    }
}
