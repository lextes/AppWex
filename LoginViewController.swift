//
//  LoginViewController.swift
//  First Unit
//
//  Created by Alexander Rodriguez Torres on 17/03/17.
//  Copyright © 2017 Desarrollo App Wexford. All rights reserved.
//

import UIKit
import RealmSwift

class LoginViewController: UIViewController {

    @IBOutlet weak var tfPass: UITextField!
    @IBOutlet weak var tfName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func login() {
        let user = tfName.text!
        let pass = tfPass.text!
        
        if user.characters.count == 0 || pass.characters.count == 0 {
            //TSMessage.showNotification(in: self, title: "Espera", subtitle: "Debes llenar todos los campos", type: .warning)
            return
        }
        ////        else if !switchTerminos.isOn || !switchPoliticas.isOn {
        ////            TSMessage.showNotification(in: self, title: "Espera", subtitle: "Debes aceptar los \"Términos\" y Condiciones y las \"Políticas de Privacidad\"", type: .warning)
        ////            return
        ////        }
        //
        
//        NetConnection.login(user, pass: pass, response: DGtalResponseHandler(vc: self, mensaje: "Iniciando Sesión...", success: {
//            data in
//            print(data)
        
            let usuario = Usuario()
            let persona = Persona()
            let configuration = Realm.Configuration()
            let realm = try! Realm(configuration: configuration)
            // Add an object
            realm.beginWrite()
            realm.add(usuario)
            realm.add(persona)
            try! realm.commitWrite()
        
            let Unit1 = DrawViewController.instantiate(fromAppStoryboard: .Main)
            
//            Utilities.delay(1, closure: {
//                AppDelegate.registerPushNotifications()
//                
//                AppDelegate.createMenuViewMain()
//            })
        
//            return nil
//        }))
        
    }

}
