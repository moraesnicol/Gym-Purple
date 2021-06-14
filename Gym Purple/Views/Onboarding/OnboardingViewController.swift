//
//  OnboardingViewController.swift
//  Gym Purple
//
//  Created by Gabriel on 12/06/21.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var nextPage: UIButton!
    
     
    var slides: [OnboardingSlide] = []

    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
        }
    }
    

           
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [
            OnboardingSlide(title: "Exclusive workout programs", description: "Choose a workout program that best fits to you.", image: #imageLiteral(resourceName: "slide1")),
            OnboardingSlide(title: "Create custom workouts", description: "Create customized workouts. You have over 500 exercises to choose.", image: #imageLiteral(resourceName: "slide2")),
            OnboardingSlide(title: "Control your weight and your measurements", description: "Track your progress in charts and statistics.", image: #imageLiteral(resourceName: "slide3"))
        ]
        pageControl.numberOfPages = slides.count
        
    }
    
    
    @IBAction func nextPageClicked(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            let controller = storyboard?
                .instantiateViewController(identifier: "loginNC") as! UINavigationController
            
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
                present(controller, animated: true, completion: nil)
            
            
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
    }
    
        
    
}



extension OnboardingViewController:
    UICollectionViewDelegate,
    UICollectionViewDataSource,
    UICollectionViewDelegateFlowLayout
    {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
           currentPage =  Int(scrollView.contentOffset.x / width)
        
    }
    
    
}
