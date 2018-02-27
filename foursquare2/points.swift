
import UIKit

struct Points<T> {
    
    var xthepos:Double?
    var ythepos:Double?
    var refepoint:T?
    
    init(_ newXPosition:Double, _ newYPosition:Double, _ pointR:T){
        self.xthepos = newXPosition
        self.ythepos = newYPosition
        self.refepoint = pointR
    }
    
    // Subscript 20pts
    /*
     In mathematics, the Euclidean distance or Euclidean metric is the "ordinary" straight-line distance between two points in Euclidean space. With this distance, Euclidean space becomes a metric space. The associated norm is called the Euclidean norm. Older literature refers to the metric as Pythagorean metric. A generalized term for the Euclidean norm is the L2 norm or L2 distance.
     
     The Euclidean distance between points p and q is the length of the line segment connecting them ( {\displaystyle {\overline {\mathbf {p} \mathbf {q} }}} \overline{\mathbf{p}\mathbf{q}}).
     
     In Cartesian coordinates, if p = (p1, p2,..., pn) and q = (q1, q2,..., qn) are two points in Euclidean n-space, then the distance (d) from p to q, or from q to p is given by the Pythagorean formula:
     dist((x, y), (a, b)) = √(x - a)² + (y - b)²
     */
    
    subscript(_ currentXPosition:Double, _ currentYPosition:Double) -> Double {
        get {
            let distance:Double = sqrt((pow((currentXPosition - xthepos!), 2) + pow(currentYPosition - ythepos!, 2)))
            return distance
        }
        
        
    }
}
