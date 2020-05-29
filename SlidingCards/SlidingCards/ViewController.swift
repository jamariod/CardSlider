//
//  ViewController.swift
//  SlidingCards
//
//  Created by Jamario Davis on 5/28/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(Item(image: UIImage(named: "dubai1")!,
                         rating: nil,
                         title: "Dubai",
                         subtitle: "Dubai is the capital of the Emirate of Dubai",
                         description: "Located in the eastern part of the Arabian Peninsula on the coast of the Persian Gulf, Dubai aims to be the business hub of Western Asia. It is also a major global transport hub for passengers and cargo. Oil revenue helped accelerate the development of the city, which was already a major mercantile hub."))
       data.append(Item(image: UIImage(named: "new-york")!,
                                rating: nil,
                                title: "New York City",
                                subtitle: "NYC is the most populous city in the US",
                                description: "New York is also the most densely populated major city in the United States. Located at the southern tip of the U.S. state of New York, the city is the center of the New York metropolitan area, the largest metropolitan area in the world by urban landmass."))
       data.append(Item(image: UIImage(named: "sea")!,
                                rating: nil,
                                title: "Seattle",
                                subtitle: "Seattle is the home to Seattle Seahawks",
                                description: "It is the seat of King County, Washington. Seattle is the largest city in both the state of Washington and the Pacific Northwest region of North America. According to U.S. Census data released in 2019, the Seattle metropolitan area's population stands at 3.98 million, and ranks as the 15th-largest in the United States."))
        data.append(Item(image: UIImage(named: "auckland")!,
                                       rating: nil,
                                       title: "Auckland",
                                       subtitle: "Auckland is a city in New Zealand",
                                       description: " The most populous urban area in the country, Auckland has an urban population of about 1,467,800 (June 2019). It is located in the Auckland Region—the area governed by Auckland Council—which includes outlying rural areas and the islands of the Hauraki Gulf, resulting in a total population of 1,642,800"))
        data.append(Item(image: UIImage(named: "sf")!,
                                              rating: nil,
                                              title: "San Francisco",
                                              subtitle: "Home of the San Francisco 49ers",
                                              description: "San Francisco is the 16th most populous city in the United States, and the fourth most populous in California, with 881,549 residents as of 2019"))
        data.append(Item(image: UIImage(named: "nassau")!,
                                                    rating: nil,
                                                    title: "Atlantis Paradise Island",
                                                    subtitle: "Paradise Island opened in 1968",
                                                    description: "Atlantis Paradise Island is an ocean-themed resort on Paradise Island in the Bahamas. It features a variety of accommodations built around Aquaventure, a 62-hectare (154-acre) waterscape, which includes fresh and saltwater lagoons, pools, marine habitats, water slides, and river rides."))
        data.append(Item(image: UIImage(named: "waikiki-beach")!,
                                                           rating: nil,
                                                           title: "Waikiki Beach",
                                                           subtitle: "Waikiki is a neighborhood of Honolulu",
                                                           description: "Waikiki is most famous for Waikiki Beach, which is one of six beaches in the district, along with Queen's Beach, Kuhio Beach, Gray's Beach, Fort DeRussy Beach and Kahanamoku Beach. Waikiki Beach is almost entirely man-made"))
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton() {
        // Present the card slider
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    func item(for index: Int) -> CardSliderItem {
           return data[index]
    }
    func numberOfItems() -> Int {
        return data.count
    }
}

