import UIKit


 
    func openMediaOptions() {
        let openPhotoLibrary = UIAlertAction(title:"Open Library", style: .default)
        let openGiphySearch = UIAlertAction(title: "Open Giphy Search", style: .default)
        
        let alert = UIAlertController(title: "Upload Media", message: "", preferredStyle: .actionSheet)
        alert.addAction(openPhotoLibrary)
        alert.addAction(openGiphySearch)
        
        this.present(alert, animated: true)
    }
    
    openMediaOptions()


