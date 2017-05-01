//
//  ViewController.swift
//  SchoolYardHeroesApp
//
//  Created by Kuma on 4/30/17.
//  Copyright © 2017 Kuma. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var schoolyardHeroes = [SchoolyardHeroe]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let syh1 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Sincerely yours, Jonathan Harker")
        let syh2 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Plastic surgery hall of fame")
        let syh3 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Beautiful woman hunter")
        let syh4 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Contra")
        let syh5 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Nothing cleanses quite like fire")
        let syh6 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Boyfriend")
        let syh7 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Nightmare at 20000 feet")
        let syh8 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "They live")
        let syh9 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Serial killers know how to party")
        let syh10 = SchoolyardHeroe(
            imageUrl: "https://i.ytimg.com/vi/jh7wnmD9AO4/hqdefault.jpg",
            videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_xMR0cmNt0s\" frameborder=\"0\" allowfullscreen></iframe>",
            videoTitle: "Dude, where is my skin")
        
        schoolyardHeroes.append(syh1)
        schoolyardHeroes.append(syh2)
        schoolyardHeroes.append(syh3)
        schoolyardHeroes.append(syh4)
        schoolyardHeroes.append(syh5)
        schoolyardHeroes.append(syh6)
        schoolyardHeroes.append(syh7)
        schoolyardHeroes.append(syh8)
        schoolyardHeroes.append(syh9)
        schoolyardHeroes.append(syh10)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let schoolyardHeroe = sender as? SchoolyardHeroe {
                destination.schoolyardHeroe = schoolyardHeroe
            }
        }
    }
    
    //region tableView methods
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "ItemTableViewCell", for: indexPath)
            as? ItemTableViewCell {
            
            let schoolyardHeroe = schoolyardHeroes[indexPath.row]
            cell.updateUI(schoolyardHeroe)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return schoolyardHeroes.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let schoolyardHeroe = schoolyardHeroes[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: schoolyardHeroe)
    }
    //endregion
    
}
