//
//  ViewController.swift
//  foursquare
//
//  Created by Juan Cabral on 12/02/18.
//  Copyright © 2018 Juan Cabral. All rights reserved.
//

import UIKit
import GoogleMaps




class MapController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    logout()
        
        //Themes 4,5
        
        let user = User(name: "Juan Cabral", image: "penguin.png")
        let post = Post(text: "Swift ", imageUrl: "post_image.png", user: user)
        
        post.incrementComments()
        post.incrementComments()
        post.incrementLikes()
        post.incrementLikes()
        
        print("comments: \(post.getComments()); likes: \(post.getLikes());")
        print("tuple: \(post.getCounters()); \(post.getDisplayTimeAgo(date:  Date(timeIntervalSinceNow: -60*60*24*7*4)))")
        print("userId: \(post.user?.id)")
        
        
        view.backgroundColor = UIColor.blue
        GMSServices.provideAPIKey("AIzaSyB8i-0Z5nk8cfPuaUJ2HhV-uLvcR5CNd34")
        
        //20.7321983,-103.3736167,16.05
        let camera = GMSCameraPosition.camera(withLatitude: 20.7321983, longitude: -103.3736167, zoom: 14.05)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 20.735026, longitude: -103.370962)
        marker.title = "Tec Milenio"
        marker.snippet = "Mexico"
        marker.map = mapView
        
        //20.731995,-103.38216,
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 20.731995, longitude: -103.38216)
        marker2.title = "Auditorio Telmex"
        marker2.snippet = "Mexico"
        marker2.map = mapView
        
        enum coordenateError: Error{
            case noPointsFound
        }
        // Func getPoints
        // Exception Handling
        // Print to map
        // Documentation
        
        
        /*
         The function of listpoint in arrays, between currentposition, and radius.
         */
        
        func getPoints(lists listsofpoint:[Points<String>],points currPosition:Points<String>, radius radius:Double) throws -> [Points<String>] {
            if radius == 0{
                throw coordenateError.noPointsFound
            }
            
            var pointList = [Points<String>]()
            
            for (index, points) in listsofpoint.enumerated() {
                
                
                let valueCalculatedDistance:Double = listsofpoint[index][currPosition.xthepos!,currPosition.ythepos!]
                
                
                if( valueCalculatedDistance < radius){
                    pointList.append(points)}
                
            }
            return pointList
        }
        
        // Testing the list points
        var lists = [Points<String>]()
        lists.append(Points<String>(0, 0, "A"))
        lists.append(Points<String>(1, 1, "B"))
        lists.append(Points<String>(2, 2, "C"))
        lists.append(Points<String>(3, 3, "D"))
        lists.append(Points<String>(4, 4, "E"))
        lists.append(Points<String>(5, 5, "F"))
        lists.append(Points<String>(6, 6, "G"))
        lists.append(Points<String>(7, 7, "H"))
        lists.append(Points<String>(8, 8, "I"))
        lists.append(Points<String>(9, 9, "J"))
        lists.append(Points<String>(10, 10, "K"))
        lists.append(Points<String>(11, 11, "L"))
        lists.append(Points<String>(12, 12, "M"))
        lists.append(Points<String>(13, 13, "N"))
        lists.append(Points<String>(14, 14, "O"))
        lists.append(Points<String>(15, 15, "P"))
        lists.append(Points<String>(16, 16, "Q"))
        lists.append(Points<String>(17, 17, "R"))
        lists.append(Points<String>(18, 18, "S"))
        lists.append(Points<String>(19, 19, "T"))
        
        
        
        
        var hardcodeOrigin = Points<String>(0, 0, "Origin")
        var givenRadio:Double = 0
        
        
        do{
            try getPoints(lists: lists, points: hardcodeOrigin, radius: givenRadio)
            
        }catch coordenateError.noPointsFound{
            print("No points in range")
        }
        catch{
            print("error")
        }
        //Test about function
        //getPoints(list of points, current position, radius)
    }
        
        
    
        
 
        
      
        
        
    
    
    //themes 6,7
    
    //we have x number of near positions
    //we have a radius
    //we have the user position
    //set of 20 positions
    
    //Point
    //longitud
    //latitud
    
    //var p1 = Point(12.2,-12.2)
    //list.append(p1)
    
    //Enum Cardinality
    // North
    // West
    // South
    // East
    //we need to find the closest position given a user position
    
    // if x== 0 then we throw an exception
    
    //func getXNumbers(list<Point>, userPosition: Point, radius:Int) -> list<Tuple(Point,Cardinality)> throws
    //function will throw an exception if there's no point at all
    //guard check and render the closest x euclidean distance in the map
    
    //userposition -> render in the map if and only if there's no exception
    
    
    

    
    func logout(){
        let loginController: LoginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }

}

