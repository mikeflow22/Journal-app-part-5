//
//  EntryDetailViewController.swift
//  w1.2d1 journal terminal
//
//  Created by Michael Flowers on 1/22/18.
//  Copyright © 2018 Michael Flowers. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        bodyTextView.text = ""
        titleTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       return true
    }
    
    //the logic behind this button is that we want to check if there is anything in it. If there is anything in it we want to know if its a new entry or old entry. if it's new then we add entry if it's not then we update entry
    @IBAction func savedButtonTapped(_ sender: UIBarButtonItem) {
        //i remember that we checked for both title and bodyText string separately
        guard let title = titleTextField.text else {return}
        guard let bodyText = bodyTextView.text else {return}
        
        //now we check for whether we should add or update
        
        guard let newEntry =  entry else {
            //if it is new entry we have to add it
            EntryController.shared.addEntryWith(title: title, bodyText: bodyText)
            navigationController?.popViewController(animated: true)
            return}
        //if not new entry then we update it
        EntryController.shared.update(title: title, bodyText: bodyText, entry: newEntry)
        navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
