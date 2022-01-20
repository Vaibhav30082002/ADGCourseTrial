//
//  CourseViewController.swift
//  ADGCoureApp
//
//  Created by Vaibhav Shah on 20/01/22.
//

import UIKit

class CourseViewController: UIViewController {

    @IBOutlet var courseSearch: UISearchBar!
    @IBOutlet var courseTableView: UITableView!
    
    var SectionTitles:[String] = ["My Courses","All Courses"]
    
    var loading = true
    var searchActive : Bool = false
    
    override func viewWillAppear(_ animated: Bool) {
        courseTableView.register(UINib(nibName: "CoursesTableViewCell", bundle: nil), forCellReuseIdentifier: "coursesCell")
        courseTableView.dataSource = self
        courseTableView.delegate = self
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension CourseViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
        if loading{
            return 1
        }
        if(searchActive){
            return 1
        }else{
            return 2
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = courseTableView.dequeueReusableCell(withIdentifier: "coursesCell", for: indexPath) as! CoursesTableViewCell
        cell.courseLongLabel.text = "Data Structure And Algorithm"
        cell.courseCode.text = "CSE304"
        
        return cell
    }
}

extension CourseViewController : UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        if(searchActive){
            if(SectionTitles.count == 2){
                SectionTitles.remove(at: 0)
                
            }
            return  1
        }else{
            if(SectionTitles.count == 1){
                SectionTitles.insert("My Course", at: 0)
                
            }
            return 2
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView(frame: CGRect(x: 0, y: 20, width: 343, height: 20)) //set these values as necessary
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 343, height: 20))
        label.text = self.SectionTitles[section]
        label.textColor = UIColor.white.withAlphaComponent(0.5)
        label.font = UIFont.systemFont(ofSize: 14)
        returnedView.addSubview(label)
        
        return returnedView
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return SectionTitles[section]
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toExpandCourse", sender: nil)
    }
    
}

//MARK:- Search Bar
extension CourseViewController: UISearchBarDelegate{
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }

    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false;
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
        courseSearch.resignFirstResponder()
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if(searchText.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
    }
    
}




