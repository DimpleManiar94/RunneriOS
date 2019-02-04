//
//  Task.swift
//  Runner
//
//  Created by Eric Castronovo on 2/4/19.
//  Copyright © 2019 Runner. All rights reserved.
//

import Foundation
import UIKit

class Task {
    
    //MARK: Properties
    
    var nameLabel: String
    var taskName: String
    var userPhoto: UIImage?
    
    
    
    
    //MARK: Initialization
    
    init?(nameLabel: String, taskName: String, userPhoto: UIImage?) {
        // Initialize stored properties.
        self.nameLabel = nameLabel
        self.userPhoto = userPhoto
        self.taskName = taskName
        
    }
}
