//
//  ViewController.swift
//  Obligatorio1
//
//  Created by SP 24 on 19/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class MatchesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var MatchesTable: UITableView!
    
    //var matches: Array<match>?
    //var teams: Array<team>?
    //var stadiums: Array<stadium>?
    
    var selectedMatch: match?
    
    let dateFormatter = DateFormatter()
    
    //var match =
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MatchesTable.dataSource = self
        MatchesTable.delegate = self
        
        dateFormatter.dateFormat = "d 'of' MMMM '-' h:mm"

        initializeData()
        
        
        /*
        let isoDate = "2016-04-14T10:44:00+0000"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX") as Locale!
        let date = dateFormatter.date(from: isoDate)!
        */
      /*  stadiums?.append(stadium(id: 1, name: "Centenario", city: "Montevideo", matches: []))
        teams?.append(team(id: 1, name: "Uruguay", abbreviated: [], group: []))
        matches?.append(match(id: 1, teamLocalId: teams?[0], teamVisitorId: teams?[0], scoreLocal: 1, scoreVisitor: 2, stadiumId: stadiums?[0], date: date))
        */
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 4
        
        return matches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CellMatchTableViewCell = MatchesTable.dequeueReusableCell(withIdentifier: "CellMatch") as! CellMatchTableViewCell
        let team1 = getTeam(teamId: matches[indexPath.row].teamLocalId)
        let team2 = getTeam(teamId: matches[indexPath.row].teamVisitorId)
        let stadium = getStadium(stadiumId: matches[indexPath.row].stadiumId)
        let imageTeam1 = UIImage(named: team1.emblem!)
        let imageTeam2 = UIImage(named: team2.emblem!)
        
        let score = getMatchResult(match: matches[indexPath.row])
        
        cell.Team1_Image.image = imageTeam1
        cell.Team2_Image.image = imageTeam2
        //cell.Date.text = matches[indexPath.row].date?.description

        cell.Date.text = dateFormatter.string(from: matches[indexPath.row].date)
        
        cell.Stadium.text = stadium.name
        cell.Phase.text = matches[indexPath.row].phase
        //cell.Team1_Name.text = team1.name! + " - " + matches[indexPath.row].scoreLocal!
        
        if score.0! > score.1! {
            
            cell.Team1_Name.font = UIFont.boldSystemFont(ofSize: 17.0)
            
        }else if score.0! > score.1!{
            
            cell.Team2_Name.font = UIFont.boldSystemFont(ofSize: 17.0)
        }
        
        cell.Team1_Name.text = team1.name! + " - " + "\(score.0!)"
       // cell.Team1_Name.text = String(describing: matches?[0].id)
        
        //cell.Team2_Name.text = "Rusia - -10"
        //cell.Team2_Name.text = team2.name! + " - " + matches[indexPath.row].scoreVisitor!
        cell.Team2_Name.text = team2.name! + " - " + "\(score.1!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedMatch = matches[indexPath.row]
        
        performSegue(withIdentifier: "MatchInfoSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let matchInfoViewController = segue.destination as? MatchInfoViewController {
            matchInfoViewController.match = selectedMatch
            
        }
    }
    

  //
  


}

