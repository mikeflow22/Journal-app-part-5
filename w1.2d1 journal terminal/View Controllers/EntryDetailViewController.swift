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
    
    @IBAction func savedButtonTapped(_ sender: UIBarButtonItem) {
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
