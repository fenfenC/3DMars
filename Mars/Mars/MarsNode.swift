//
//  MarsNode.swift
//  3dMars
///Users/cff/Desktop/IMG_0365.TRIM.MOV
//  Created by cff on 2019/3/4.
//  Copyright © 2019 cff. All rights reserved.
//

import SceneKit

class MarsNode: SCNNode {
    override init(){
        super.init()
        self.geometry = SCNSphere(radius:1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"diffuse")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named:"specular")
        //self.geometry?.firstMaterial?.normal.contents = UIImage(named:"normal")
        self.geometry?.firstMaterial?.shininess = 50
        let action = SCNAction.rotate(by: 360*CGFloat(Double.pi/180), around:SCNVector3(x:0,y:1,z:0), duration: 8)
        let repeatAction = SCNAction.repeatForever(action)
        self.runAction(repeatAction)
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
