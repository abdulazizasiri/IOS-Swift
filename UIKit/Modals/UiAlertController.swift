
      @IBAction func add(_ sender: Any) {
        let alert = UIAlertController()
        
        alert.title = "Add Location"
        alert.message = "No thank you"
     

        let ocAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {
            action in self.dismiss(animated:true, completion:nil)
        })
        alert.addAction(ocAction)
        present(alert, animated: true,completion: nil)
   
        
    }
