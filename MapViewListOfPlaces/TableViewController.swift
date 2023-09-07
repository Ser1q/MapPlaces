//
//  TableViewController.swift
//  MapViewListOfPlaces
//
//  Created by Nuradil Serik on 05.09.2023.
//

import UIKit

class TableViewController: UITableViewController {

    var arrayOfPlaces: [Places] = [
        Places(name: "Machu Picchu, Peru", imageName: "machupichu", description: "A mystical Inca citadel lost to the jungle for centuries, Machu Picchu is one of the most popular tourist destinations in the world. Perched high in the Andes Mountains, it offers stunning views of the surrounding countryside.", longitude: "-72.5167", lattitude: "-13.1667"),
        Places(name: "The Northern Lights (Aurora Borealis)", imageName: "lights", description: "This natural light display is caused by the collision of charged particles from the sun with the Earth's atmosphere. It is most visible in high-latitude regions, such as Alaska, Canada, Iceland, Norway, and Sweden. The best time to see the Northern Lights is during the winter months, when the nights are long and dark.", longitude: "-19.020835", lattitude: "64.963051"),
        Places(name: "The Great Barrier Reef", imageName: "reef", description: "This coral reef system is the largest in the world and is located in the Coral Sea off the coast of Queensland, Australia. It is home to a wide variety of marine life, including fish, turtles, and dolphins. The best time to visit the Great Barrier Reef is during the summer months, when the weather is warm and sunny. ", longitude: "142.5333", lattitude: "-10.5000"),
        Places(name: "The Taj Mahal", imageName: "tajmahal", description: "This white marble mausoleum is located in Agra, India. It was built by Mughal emperor Shah Jahan in memory of his wife Mumtaz Mahal. The Taj Mahal is considered one of the most beautiful buildings in the world. It is made of white marble and is inlaid with precious stones. The mausoleum is located on the banks of the Yamuna River and is surrounded by lush gardens. ", longitude: "78.0422", lattitude: "27.1752"),
        Places(name: "The Grand Canyon", imageName: "canyon", description: "This canyon is located in the U.S. state of Arizona. It is one of the Seven Natural Wonders of the World and is known for its deep, steep walls and colorful rock formations. The Grand Canyon is 277 miles (446 km) long, up to 18 miles (29 km) wide and attains a depth of over a mile (6,093 feet or 1,857 meters).", longitude: "-111.7000", lattitude: "36.1167"),
        Places(name: "The Serengeti National Park", imageName: "park", description: "This national park is located in Tanzania. It is home to a wide variety of wildlife, including lions, elephants, and zebras. The Serengeti is known for its annual migration of wildebeest and zebras. The migration takes place between July and October, when millions of animals move from the Serengeti to the Maasai Mara National Reserve in Kenya. ", longitude: "34.8667", lattitude: "-2.9167"),
        Places(name: "The Amazon rainforest", imageName: "amazon", description: "This rainforest is located in South America. It is the largest rainforest in the world and is home to a wide variety of plant and animal life. The Amazon rainforest is home to over 40,000 plant species, 1,300 bird species, and 3,000 fish species.", longitude: "-60.0000", lattitude: "-5.0000"),
        Places(name: "The Galapagos Islands", imageName: "galapagos", description: "This archipelago is located in the Pacific Ocean off the coast of Ecuador. It is known for its unique wildlife, which includes giant tortoises, iguanas, and penguins. The Galapagos Islands are home to over 500 species of animals, many of which are found nowhere else in the world.", longitude: "-90.3333", lattitude: "-0.2000")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfPlaces.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let labelName = cell.viewWithTag(1002) as! UILabel
        labelName.text = arrayOfPlaces[indexPath.row].name
        let imageName = cell.viewWithTag(1001) as! UIImageView
        imageName.image = UIImage(named: arrayOfPlaces[indexPath.row].imageName)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailedVC = storyboard?.instantiateViewController(withIdentifier: "detailedVC") as! ViewController
        
        navigationController?.show(detailedVC, sender: self)
        
        detailedVC.places = arrayOfPlaces[indexPath.row]
        
        
        
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
