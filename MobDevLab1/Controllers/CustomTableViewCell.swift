//
//  CustomTableViewCell.swift
//  MobDevLab1
//
//  Created by Dima on 20.02.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var year: UILabel!
    @IBOutlet var type: UILabel!
    @IBOutlet var myContentView: UIView!
    @IBOutlet var myStackView: UIStackView!
    
    func setImageAndLabel(movie: Movies.Movie) {
        if(movie.poster != "") {
            let name = String(movie.poster.prefix(movie.poster.count - 4))
            if let path = Bundle.main.path(forResource: name, ofType: "jpg") {
                myImageView.image = UIImage(contentsOfFile: path)
            }
        }
        myContentView.bottomAnchor.constraint(greaterThanOrEqualTo: myImageView.bottomAnchor, constant: 10).isActive = true
        myContentView.bottomAnchor.constraint(greaterThanOrEqualTo: myStackView.bottomAnchor, constant: 10).isActive = true
        title.text = movie.title
        if(movie.year == "") {
            year.isHidden = true
        } else {
            year.text = movie.year
        }
        type.text = movie.type
        
    }
}