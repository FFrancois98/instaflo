//
//  HomeFeedViewController.swift
//  instaflo
//
//  Created by user144860 on 9/28/18.
//  Copyright © 2018 Fleurevca Francois. All rights reserved.
//

import UIKit
import Parse
class HomeFeedViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    //let vc = UIImagePickerController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        self.present(vc, animated: true, completion: nil)
        */
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        NotificationCenter.default.post(name: NSNotification.Name("didLogout"), object: nil)
        let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
        
        appDelegate?.logOut()
    }
    

}
