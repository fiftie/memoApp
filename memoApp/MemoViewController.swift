//
//  MemoViewController.swift
//  memoApp
//
//  Created by 五十嵐龍吉 on 2019/08/08.
//  Copyright © 2019 Tatsuyoshi Igarashi. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {
	
	var memo: String?;
	
	@IBOutlet weak var memoTextField: UITextField!
	@IBOutlet weak var saveButton: UIBarButtonItem!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.saveButton.isEnabled = false;
		if let memo = self.memo {
			self.memoTextField.text = memo;
			self.navigationItem.title = "Edit Memo";
		}
		self.updateSaveButtonState();
		
		// Do any additional setup after loading the view.
	}
	
	private func updateSaveButtonState() {
		let memo = self.memoTextField.text ?? "";
		self.saveButton.isEnabled = !memo.isEmpty;
	}
	
	@IBAction func memoTextFieldChanged(_ sender: Any) {
		self.updateSaveButtonState();
	}
	
	@IBAction func cancel(_ sender: Any) {
		if self.presentingViewController is UINavigationController {
			self.dismiss(animated: true, completion: nil);
		} else {
			self.navigationController?.popViewController(animated: true);
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
			return;
		}
		self.memo = self.memoTextField.text ?? "";
	}
	

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
