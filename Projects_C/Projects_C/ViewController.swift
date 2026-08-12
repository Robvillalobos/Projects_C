//
//  ViewController.swift
//  Projects_C
//
//  Created by Roberto Villalobos on 12-08-26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupButton()
    }

    private func setupButton() {
        let boton = UIButton(type: .system)
        boton.setTitle("Proyecto C", for: .normal)
        boton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        boton.backgroundColor = .systemBlue
        boton.setTitleColor(.white, for: .normal)
        boton.layer.cornerRadius = 10
        boton.translatesAutoresizingMaskIntoConstraints = false
        boton.addTarget(self, action: #selector(botonPresionado), for: .touchUpInside)

        view.addSubview(boton)

        NSLayoutConstraint.activate([
            boton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            boton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            boton.widthAnchor.constraint(equalToConstant: 220),
            boton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    @objc private func botonPresionado() {
        print("Se presionó el botón Proyecto A")
    }
}
