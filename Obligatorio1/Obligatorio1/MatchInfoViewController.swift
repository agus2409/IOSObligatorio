//
//  MatchInfoViewController.swift
//  Obligatorio1
//
//  Created by SP 24 on 19/4/18.
//  Copyright © 2018 UCUDAL. All rights reserved.
//

import UIKit

class MatchInfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var highLightsTableView: UITableView!
    
    @IBOutlet weak var matchTitle: UILabel!
    @IBOutlet weak var matchStadium: UILabel!
    @IBOutlet weak var stadiumImage: UIImageView!
    
    @IBOutlet weak var team1Image: UIImageView!
    @IBOutlet weak var team2Image: UIImageView!
    @IBOutlet weak var team1Name: UILabel!
    @IBOutlet weak var team2Name: UILabel!
    @IBOutlet weak var matchDate: UILabel!
    
    
    var matchHighlights = Array<highlight>()
    var match: match?
    
    var selectedTeam: team?
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "d 'of' MMMM '-' h:mm"
        
        
        // create tap gesture recognizer
        let tapGestureTeam1 = UITapGestureRecognizer(target: self, action: #selector(MatchInfoViewController.imageTeam1Tapped(gesture:)))
        let tapGestureTeam2 = UITapGestureRecognizer(target: self, action: #selector(MatchInfoViewController.imageTeam2Tapped(gesture:)))
        
        // add it to the image view;
        
        team1Image.addGestureRecognizer(tapGestureTeam1)
        team2Image.addGestureRecognizer(tapGestureTeam2)
        
        // make sure imageView can be interacted with by user
       
        team1Image.isUserInteractionEnabled = true
        team2Image.isUserInteractionEnabled = true
        
        highLightsTableView.dataSource = self
        highLightsTableView.delegate = self
        

        //matchStadium.text=stadium
       // matchStadium.text=match?.stadium?.name
       // matchTitle.text=match?.teamLocal?.name
        let team1 = getTeam(teamId: match?.teamLocalId)
        let team2 = getTeam(teamId: match?.teamVisitorId)
        let stadium = getStadium(stadiumId: match?.stadiumId)
        
        matchHighlights = getMatchHighlights(matchId: match?.id)
        
        
        let imageTeam1 = UIImage(named: team1.emblem!)
        let imageTeam2 = UIImage(named: team2.emblem!)
        let imageStadium = UIImage(named: stadium.image!)
        
        
        matchTitle.text = team1.name! + " - " + team2.name!
        //stadiumImage.image = imageStadium
        stadiumImage.image = imageStadium
        matchStadium.text = stadium.name
        team1Name.text = team1.name
        team2Name.text = team2.name
        team1Image.image=imageTeam1
        team2Image.image=imageTeam2
        
        
        matchDate.text = dateFormatter.string(from: (match?.date)!)
        //matchDate.text = match?.date.description
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matchHighlights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell:CellHighlightTableViewCell = highLightsTableView.dequeueReusableCell(withIdentifier: "CellHighlight") as! CellHighlightTableViewCell
        
        
        let highlight = matchHighlights[indexPath.row]
        let highlightType = getHighlightType(hTypeId: highlight.hTypeId)
        let highlightTypeImage = highlightType.hTypeImage
        let highlightPlayer = getPlayer(playerId: highlight.playerId)
       // let highlightTeam = getTeam(teamId: highlightPlayer.teamId)
        
        if highlightPlayer.teamId == match?.teamLocalId {
            cell.highlightDescriptionTeam1.text = highlightPlayer.name
            
            
            cell.highlightImageTeam1.image = UIImage(named: highlightTypeImage! )
            
            cell.highlightDescriptionTeam2.text = ""
        }else{
            cell.highlightDescriptionTeam2.text = highlightPlayer.name
            
            cell.highlightImageTeam2.image = UIImage(named: highlightTypeImage! )
            
            cell.highlightDescriptionTeam1.text = ""
        }
        cell.highlightTime.text = highlight.hlMinute
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    @objc func imageTeam1Tapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            //print("Image Tam 1 Tapped")
            //Here you can initiate your new ViewController
            
            
            selectedTeam = getTeam(teamId: match?.teamLocalId)
            
            performSegue(withIdentifier: "TeamInfoSegue", sender: self)
            
            
        }
    }
    
   
    
    @objc func imageTeam2Tapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            //print("Image Tam 2 Tapped")
            //Here you can initiate your new ViewController
            
            selectedTeam = getTeam(teamId: match?.teamVisitorId)
            
            performSegue(withIdentifier: "TeamInfoSegue", sender: self)
            
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let teamInfoViewController = segue.destination as? TeamInfoViewController {
        
            teamInfoViewController.team = selectedTeam
            
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
