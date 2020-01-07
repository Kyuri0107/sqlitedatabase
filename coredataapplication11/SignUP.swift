//
//  SignUP.swift
//  coredataapplication11
//
//  Created by COE-009 on 07/01/20.
//  Copyright © 2020 COE-009. All rights reserved.
//

import UIKit

class SignUP: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource,UINavigationControllerDelegate , UIImagePickerControllerDelegate {
    
    var arr = [    "Afghanistan",
                   "Albania",
                   "Algeria",
                   "American Samoa",
                   "Andorra",
                   "Angola",
                   "Anguilla",
                   "Antarctica",
                   "Antigua and Barbuda",
                   "Argentina",
                   "Armenia",
                   "Aruba",
                   "Australia",
                   "Austria",
                   "Azerbaijan",
                   "Bahamas (the)",
                   "Bahrain",
                   "Bangladesh",
                   "Barbados",
                   "Belarus",
                   "Belgium",
                   "Belize",
                   "Benin",
                   "Bermuda",
                   "Bhutan",
                   "Bolivia (Plurinational State of)",
                   "Bonaire, Sint Eustatius and Saba",
                   "Bosnia and Herzegovina",
                   "Botswana",
                   "Bouvet Island",
                   "Brazil",
                   "British Indian Ocean Territory (the)",
                   "Brunei Darussalam",
                   "Bulgaria",
                   "Burkina Faso",
                   "Burundi",
                   "Cabo Verde",
                   "Cambodia",
                   "Cameroon",
                   "Canada",
                   "Cayman Islands (the)",
                   "Central African Republic (the)",
                   "Chad",
                   "Chile",
                   "China",
                   "Christmas Island",
                   "Cocos (Keeling) Islands (the)",
                   "Colombia",
                   "Comoros (the)",
                   "Congo (the Democratic Republic of the)",
                   "Congo (the)",
                   "Cook Islands (the)",
                   "Costa Rica",
                   "Croatia",
                   "Cuba",
                   "Curaçao",
                   "Cyprus",
                   "Czechia",
                   "Côte d'Ivoire",
                   "Denmark",
                   "Djibouti",
                   "Dominica",
                   "Dominican Republic (the)",
                   "Ecuador",
                   "Egypt",
                   "El Salvador",
                   "Equatorial Guinea",
                   "Eritrea",
                   "Estonia",
                   "Eswatini",
                   "Ethiopia",
                   "Falkland Islands (the) [Malvinas]",
                   "Faroe Islands (the)",
                   "Fiji",
                   "Finland",
                   "France",
                   "French Guiana",
                   "French Polynesia",
                   "French Southern Territories (the)",
                   "Gabon",
                   "Gambia (the)",
                   "Georgia",
                   "Germany",
                   "Ghana",
                   "Gibraltar",
                   "Greece",
                   "Greenland",
                   "Grenada",
                   "Guadeloupe",
                   "Guam",
                   "Guatemala",
                   "Guernsey",
                   "Guinea",
                   "Guinea-Bissau",
                   "Guyana",
                   "Haiti",
                   "Heard Island and McDonald Islands",
                   "Holy See (the)",
                   "Honduras",
                   "Hong Kong",
                   "Hungary",
                   "Iceland",
                   "India",
                   "Indonesia",
                   "Iran (Islamic Republic of)",
                   "Iraq",
                   "Ireland",
                   "Isle of Man",
                   "Israel",
                   "Italy",
                   "Jamaica",
                   "Japan",
                   "Jersey",
                   "Jordan",
                   "Kazakhstan",
                   "Kenya",
                   "Kiribati",
                   "Korea (the Democratic People's Republic of)",
                   "Korea (the Republic of)",
                   "Kuwait",
                   "Kyrgyzstan",
                   "Lao People's Democratic Republic (the)",
                   "Latvia",
                   "Lebanon",
                   "Lesotho",
                   "Liberia",
                   "Libya",
                   "Liechtenstein",
                   "Lithuania",
                   "Luxembourg",
                   "Macao",
                   "Madagascar",
                   "Malawi",
                   "Malaysia",
                   "Maldives",
                   "Mali",
                   "Malta",
                   "Marshall Islands (the)",
                   "Martinique",
                   "Mauritania",
                   "Mauritius",
                   "Mayotte",
                   "Mexico",
                   "Micronesia (Federated States of)",
                   "Moldova (the Republic of)",
                   "Monaco",
                   "Mongolia",
                   "Montenegro",
                   "Montserrat",
                   "Morocco",
                   "Mozambique",
                   "Myanmar",
                   "Namibia",
                   "Nauru",
                   "Nepal",
                   "Netherlands (the)",
                   "New Caledonia",
                   "New Zealand",
                   "Nicaragua",
                   "Niger (the)",
                   "Nigeria",
                   "Niue",
                   "Norfolk Island",
                   "Northern Mariana Islands (the)",
                   "Norway",
                   "Oman",
                   "Pakistan",
                   "Palau",
                   "Palestine, State of",
                   "Panama",
                   "Papua New Guinea",
                   "Paraguay",
                   "Peru",
                   "Philippines (the)",
                   "Pitcairn",
                   "Poland",
                   "Portugal",
                   "Puerto Rico",
                   "Qatar",
                   "Republic of North Macedonia",
                   "Romania",
                   "Russian Federation (the)",
                   "Rwanda",
                   "Réunion",
                   "Saint Barthélemy",
                   "Saint Helena, Ascension and Tristan da Cunha",
                   "Saint Kitts and Nevis",
                   "Saint Lucia",
                   "Saint Martin (French part)",
                   "Saint Pierre and Miquelon",
                   "Saint Vincent and the Grenadines",
                   "Samoa",
                   "San Marino",
                   "Sao Tome and Principe",
                   "Saudi Arabia",
                   "Senegal",
                   "Serbia",
                   "Seychelles",
                   "Sierra Leone",
                   "Singapore",
                   "Sint Maarten (Dutch part)",
                   "Slovakia",
                   "Slovenia",
                   "Solomon Islands",
                   "Somalia",
                   "South Africa",
                   "South Georgia and the South Sandwich Islands",
                   "South Sudan",
                   "Spain",
                   "Sri Lanka",
                   "Sudan (the)",
                   "Suriname",
                   "Svalbard and Jan Mayen",
                   "Sweden",
                   "Switzerland",
                   "Syrian Arab Republic",
                   "Taiwan (Province of China)",
                   "Tajikistan",
                   "Tanzania, United Republic of",
                   "Thailand",
                   "Timor-Leste",
                   "Togo",
                   "Tokelau",
                   "Tonga",
                   "Trinidad and Tobago",
                   "Tunisia",
                   "Turkey",
                   "Turkmenistan",
                   "Turks and Caicos Islands (the)",
                   "Tuvalu",
                   "Uganda",
                   "Ukraine",
                   "United Arab Emirates (the)",
                   "United Kingdom of Great Britain and Northern Ireland (the)",
                   "United States Minor Outlying Islands (the)",
                   "United States of America (the)",
                   "Uruguay",
                   "Uzbekistan",
                   "Vanuatu",
                   "Venezuela (Bolivarian Republic of)",
                   "Viet Nam",
                   "Virgin Islands (British)",
                   "Virgin Islands (U.S.)",
                   "Wallis and Futuna",
                   "Western Sahara",
                   "Yemen",
                   "Zambia",
                   "Zimbabwe",
                   "Åland Islands"]
    
    var db:ManageDB!
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var emailid: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmpassword: UITextField!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBAction func savebtn(_ sender: Any) {
        let imgdata = self.img.image
        
        let gender = Gender[segment.selectedSegmentIndex]
        
        let cmd = "INSERT INTO dbtable (name,emailid,password,gender,city,image) VALUES ('\(name.text!)','\(emailid.text!)','\(password.text!)','\(gender)','\(country)','\(imgdata)')"
        
        if db.RunCommand(cmdText: cmd)
        {
            print("Inserted")
        }
        else{
            print("Not Inserted")
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        db = ManageDB()
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
      var country = ""
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        country = (arr[row] as! String)
    }
    var Gender = ["Male","Female","Other"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let tapgest = UITapGestureRecognizer()
        tapgest.addTarget(self, action: #selector(SignUP.opengalary))
        img.isUserInteractionEnabled = true
        img.addGestureRecognizer(tapgest)
        

        // Do any additional setup after loading the view.
    }
    @objc func opengalary(tapgest:UITapGestureRecognizer)
    {
        self.setmyimg()
    }
    
    let imagepicker = UIImagePickerController()
    
    
    func setmyimg() {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            
            imagepicker.sourceType = .photoLibrary
            imagepicker.delegate = self
            imagepicker.isEditing = true
            self.present(imagepicker, animated: true, completion: nil)
        }
        
    }
  
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let imagee = info[UIImagePickerControllerOriginalImage] as! UIImage
        img.image = imagee
        self.dismiss(animated: true, completion: nil)
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

}
