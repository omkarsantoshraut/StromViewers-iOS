import UIKit

/**
 The class ViewController will create a first screen which will have table view with app images names listed in sorted order.
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pictures: [String] = []
    var myTableView: UITableView!

    // ViewDidLoad method
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Strom Viewers"
        navigationController?.navigationBar.prefersLargeTitles = true

        view.backgroundColor = UIColor.white
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nss") {
                pictures.append(item)
            }
        }
        pictures = pictures.sorted()

        myTableView = UITableView(frame: .zero)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "ImageCell")
        myTableView.delegate = self
        myTableView.dataSource = self
        self.view.addSubview(myTableView)
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        setConstraints()
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            myTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            myTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            myTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            myTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    // MARK: UITebleView delegate methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        cell.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        detailVC.selectedImageString = pictures[indexPath.row]
        detailVC.selectedItemIndex = indexPath.row + 1
        detailVC.totalItems = pictures.count
        navigationController?.pushViewController(detailVC, animated: true)
    }


}

