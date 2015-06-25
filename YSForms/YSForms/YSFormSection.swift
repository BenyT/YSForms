//
//  YSFormSection.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormSection {
   
    // MARK: Properties
    
    var section: UIView!
    var cells: [YSFormCell]!
    
    var title: String?
    var titleLabel: UILabel?
    
    var headerView: UIView?
    var footerView: UIView?
    
    var tag: String!
    var index: Int!
    
    
    // MARK: Add Cell
    
    func addCell (cell: YSFormCell) {
    
    }
    
    func addCellAtIndex (cell: YSFormCell, index: Int) {
        
    }
    
    
    // MARK: Remove Cell
    
    func removeCell (cell: YSFormCell) {
    
    }
    
    func removeCellAtIndex (index: Int) {
    
    }
    
}
