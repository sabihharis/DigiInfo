//
//  HomeVC
//  DigiInfo
//
//  Created by Apple on 28/05/2018.
//  Copyright © 2018 Apple. All rights reserved.
//

import UIKit
//import Alamofire

class HomeVC: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate{

    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var videoView: UIImageView!
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var locationAdress: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(HomeVC.handleTap))
        view.addGestureRecognizer(tap)
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
//        let parameters = ["email":"Sabih@icloud.com",
//                                                    "imagepath": "unknownImageName" ,
//                                      "imagename":"unknownImageName" ,
//                                      "msg":"MyMessage",
//                                      "lat":"334.4431",
//                                      "long":"vfvfv",
//                                      "place":"232edffd",
//                                      "date":"323"
//                    ]
//
//        let header = [
//            "Accept": "application/json",
//            "content-Type": "application/json",
//            "Content-Type": "multipart/form-data"
//        ]
//
//        Alamofire.request("https://backhand.herokuapp.com/api/image", method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: header).response { response in
//            print("Request: \(response.request)")
//            print("Response: \(response.response)")
//            print("Error: \(response.error)")
//
//
//        }
        
//        Alamofire.request("https://backhand.herokuapp.com/api/image").response { response in
//            print("Request: \(response.request)")
//            print("Response: \(response.response)")
//            print("Error: \(response.error)")
//
//
//    }
    }

    @IBAction func sendDataPressed(_ sender: Any) {
        DataServices.instance.postImage(photo:imageView.image!, msg: "Sabih", lat: "Sabih", long: "Sabih", place: "Sabih", date: "Sabih") { (success) in
            if success {
                print("Posted")
            
            }
        }
        
        
        
        
        
        
        
        

//        guard let url = URL(string: "https://backhand.herokuapp.com/api/image") else { return }
//
//        let session = URLSession.shared
//        session.dataTask(with: url) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//
//            if let data = data {
//                print(data)
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                } catch {
//                    print(error)
//
//                }
//            }
//        }.resume()

        
//        let parameters = digiInfo(email: "sabihharis@icloud.com", profileImage: #imageLiteral(resourceName: "dark10"), imagetype: ".jpg", msg: "ded", lat: "221.211", long: "33.333", place: "dded", date: "sdfdsxx", connect: "ssss", method: "ssss")
//
        
        
        
        

//        let parameters = [
//                        "photo": #imageLiteral(resourceName: "defaultProfileImage") ,
//                        "msg":"MyMessage",
//                          "lat":"334.4431",
//                          "long":"vfvfv",
//                          "place" : "KU v. . . .",
//                          "date"  : "crvcefvfv",
//                        ] as [String : Any]
//
//        guard let url = URL(string: "https://backhand.herokuapp.com/api/image") else { return }
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
//        request.httpBody = httpBody
//
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//
//            if let data = data {
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                    print(data)
//
//                }
//                catch {
////                    print(error)
//                }
//            }
//
//            }.resume()
        
        
        
        
        
        
        
        
        
        
    }
   
    @IBAction func uploadImagePressed(_ sender: Any) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary
        present(controller, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.backgroundColor = UIColor.clear
        self.dismiss(animated: true, completion: nil)
        
    }
    @objc func handleTap() {
        view.endEditing(true)
    }
}

