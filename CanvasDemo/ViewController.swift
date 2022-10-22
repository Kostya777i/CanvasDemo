//
//  ViewController.swift
//  CanvasDemo
//
//  Created by Konstantin Losev on 19.10.2022.
//

import UIKit
import SwiftUI

// MARK: - 1 * Preview only in class
//struct ViewControllerPreview: UIViewControllerRepresentable {
//    let viewControllerGenerator: () -> UIViewController
//
//    init(viewControllerGenerator: @escaping () -> UIViewController) {
//        self.viewControllerGenerator = viewControllerGenerator
//    }
//
//    func makeUIViewController(context: Context) -> some UIViewController {
//        viewControllerGenerator()
//    }
//
//    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
//}

class ViewController: UIViewController {
    
    let helloLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.textColor = .orange
        label.font = .systemFont(ofSize: 35, weight: .semibold)
        return label
    }()

    let image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "sun.and.horizon")
        image.tintColor = .orange
        return image
    }()
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.tintColor = .orange
        slider.maximumTrackTintColor = .magenta
        slider.thumbTintColor = .orange
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.value = 50
        return slider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setupConstraints()
    }

    private func setupConstraints() {
        view.addSubview(helloLabel)
        view.addSubview(image)
        view.addSubview(slider)
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        slider.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            helloLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 70),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.heightAnchor.constraint(equalTo: helloLabel.heightAnchor, multiplier: 2),
            image.widthAnchor.constraint(equalTo: helloLabel.widthAnchor, multiplier: 0.7)
        ])
        
        NSLayoutConstraint.activate([
            slider.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150),
            slider.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            slider.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        ])
    }
}

// MARK: - Preview with extension
struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ViewController().showPreview()
    }
}

// MARK: - 2 *
//struct ViewControllerProvider: PreviewProvider {
//    static var previews: some View {
//        ViewControllerPreview {
//            ViewController()
//        }.edgesIgnoringSafeArea(.all)
//    }
//}
