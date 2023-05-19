//
//  ViewController.swift
//  calculator
//
//  Created by Fatih Gümüş on 19.05.2023.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    
    var sonuc = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Numara klavyesini sadece numaralarla sınırla
        firstNumber.keyboardType = .numberPad
        secondNumber.keyboardType = .numberPad
          
        // UITextFieldDelegate'i kendimize atayalım
        firstNumber.delegate = self
        secondNumber.delegate = self
    }
    
    // Numara klavyesine sadece numara girilmesini sağlayalım
   func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       let allowedCharacters = CharacterSet.decimalDigits
       let characterSet = CharacterSet(charactersIn: string)
       return allowedCharacters.isSuperset(of: characterSet)
   }

    @IBAction func topla(_ sender: Any) {
        if let ilkSayi = Int(firstNumber.text!){
            if let ikinciSayi = Int(secondNumber.text!){
                sonuc = ilkSayi + ikinciSayi;
                result.text = "Sonuç : " + String(sonuc);
            }
        }

    }
    
    
    @IBAction func cikar(_ sender: Any) {
        if let ilkSayi = Int(firstNumber.text!){
            if let ikinciSayi = Int(secondNumber.text!){
                sonuc = ilkSayi - ikinciSayi;
                result.text = "Sonuç : " + String(sonuc);
            }
        }
    }
    
    
    @IBAction func carpma(_ sender: Any) {
        if let ilkSayi = Int(firstNumber.text!){
            if let ikinciSayi = Int(secondNumber.text!){
                sonuc = ilkSayi * ikinciSayi;
                result.text = "Sonuç : " + String(sonuc);
            }
        }
    }
    
    
    @IBAction func bolme(_ sender: Any) {
        if let ilkSayi = Int(firstNumber.text!){
            if let ikinciSayi = Int(secondNumber.text!){
                sonuc = ilkSayi / ikinciSayi;
                result.text = "Sonuç : " + String(sonuc);
            }
        }
    }
}
