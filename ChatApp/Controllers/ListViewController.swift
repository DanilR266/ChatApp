//
//  ListViewController.swift
//  ChatApp
//
//  Created by Данила on 21.08.2022.
//

import UIKit


class ListViewController: UIViewController {
    
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
        view.backgroundColor = .red
    }
    
    private func setUpCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellid")
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}


extension ListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
}

import SwiftUI

struct ListViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ConteinerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ConteinerView: UIViewControllerRepresentable {
        
        let listViewController = ListViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ListViewControllerProvider.ConteinerView>) -> ListViewController {
            return listViewController
        }
        func updateUIViewController(_ uiViewController: ListViewControllerProvider.ConteinerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ListViewControllerProvider.ConteinerView>) {
            
        }
    }
}





