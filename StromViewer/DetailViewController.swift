import UIKit

/**
 This call will show the selected image on the whole screen of the simulator.
 */

class DetailViewController: UIViewController {
    var imageView: UIImageView!
    var selectedImageString: String?
    var selectedItemIndex: Int!
    var totalItems: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(selectedItemIndex ?? 0) of \(totalItems ?? 0)"
        navigationItem.largeTitleDisplayMode = .never

        view.backgroundColor = UIColor.white
        imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        if let selectedImage = selectedImageString {
            imageView.image = UIImage(named: selectedImage)
        }
        imageView.contentMode = .scaleToFill
        view.addSubview(imageView)
        setConstraints()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }


}
