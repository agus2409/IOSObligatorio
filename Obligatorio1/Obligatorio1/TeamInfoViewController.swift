//
//  TeamInfoViewController.swift
//  Obligatorio1
//
//  Created by SP 24 on 3/5/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class TeamInfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    
    @IBOutlet weak var nextMatchesCollection: UICollectionView!
    @IBOutlet weak var PlayersTable: UITableView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var teamImage: UIImageView!
    
    var team: team?
    
    var teamPlayers = Array<player>()
    
    var nextMatches = Array<match> ()
   
    let dateFormatter = DateFormatter()
    
    var selectedMatch: match?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "d 'of' MMMM '-' h:mm"

        PlayersTable.dataSource = self
        PlayersTable.delegate = self
        
        nextMatchesCollection.dataSource = self
        nextMatchesCollection.delegate = self
        
        
        nextMatches = getTeamNextMaches(teamId: team?.id)
        teamPlayers = getTeamPlayers(teamId: team?.id)
        
        let imageTeam = team?.emblem
        
        teamName.text = team?.name
        teamImage.image = UIImage(named: imageTeam!)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamPlayers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CellPlayerTableViewCell = PlayersTable.dequeueReusableCell(withIdentifier: "CellPlayer") as! CellPlayerTableViewCell
        
        let teamPlayer = teamPlayers[indexPath.row]
        
        
        cell.number.text = teamPlayer.position
        cell.name.text = teamPlayer.name
        cell.team.text = teamPlayer.currentTeam 
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nextMatches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = nextMatchesCollection.dequeueReusableCell(withReuseIdentifier: "NextMatchCell", for: indexPath as IndexPath) as! NextMatchCollectionViewCell
        
        let match = getMatch(matchId: nextMatches[indexPath.row].id)
        
        var opponent: team?
        
        if match.teamLocalId != team?.id {
            
            opponent = getTeam(teamId: match.teamLocalId)
           
        }
        else {
            
            opponent = getTeam(teamId: match.teamVisitorId)
        }
        
        let opponentImage = opponent?.emblem
        cell.teamImage.image = UIImage(named: opponentImage!)
        cell.teamName.text = opponent?.name
        //cell.date.text = match.date.description
        cell.date.text = dateFormatter.string(from: match.date)
        cell.stadium.text = getStadium(stadiumId: match.stadiumId).name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedMatch = nextMatches[indexPath.row]
        
        performSegue(withIdentifier: "BackMatchInfoSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let matchInfoViewController = segue.destination as? MatchInfoViewController {
            matchInfoViewController.match = selectedMatch
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
