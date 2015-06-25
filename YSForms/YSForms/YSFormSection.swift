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
    
    var tag: String!
    var index: Int!
    
    var section: UIView!
    
    var cells: [YSFormCell] = [] {
        didSet {
            self.draw()
        }
    }
    
    var title: String? {
        didSet {
            self.titleDidChanged()
        }
    }
    
    var titleLabel: UILabel? {
        didSet {
            self.draw()
        }
    }
    
    var headerView: UIView? {
        didSet {
            self.draw()
        }
    }
    
    var footerView: UIView? {
        didSet {
            self.draw()
        }
    }
    
    
    // MARK: Init 
    
    init (tag: String!, title: String?) {
        self.tag = tag
        self.title = title
        self.titleDidChanged()
    }
    
    
    // MARK: Add Cell
    
    func addCell (cell: YSFormCell) {
        cells.append(cell)
    }
    
    func addCellAtIndex (cell: YSFormCell, index: Int) {
        cells.insert(cell, atIndex: index)
    }
    
    
    // MARK: Remove Cell
    
    func removeCell (cell: YSFormCell) {
        
        var index: Int?
        for i in 0..<cells.count {
            if cells[i].tag == cell.tag {
                index = i
                break
            }
        }
        
        if let i = index {
            removeCellAtIndex(i)
        }
    }
    
    func removeCellAtIndex (index: Int) {
        cells.removeAtIndex(index)
    }
    
    
    // MARK: Draw
    
    func draw () {
        
        // reset
        
        if section != nil {
            section = nil
        }
        
        section = UIView(x: 0, y: 0, w: YSFormWidth, h: 0)
        
        var height: CGFloat = 0
        
        
        // header
        
        if let label = titleLabel {
            label.y = 0
            section.addSubview(label)
            height = label.bottomWithOffset(10)
        } else if let header = headerView {
            header.y = 0
            section.addSubview(header)
            height = header.bottomWithOffset(10)
        }
        
        
        // content
        
        var contentViewHeight: CGFloat = 0
        var contentView = UIView(x: 0, y: height, w: section.w, h: 0)
        
        contentView.addBorder(1, color: UIColor.CardBorderColor())
        section.addSubview(contentView)
        
        var i = 0
        for cell in cells {
            
            cell.cell.y = contentViewHeight
            contentView.addSubview (cell.cell)
            contentViewHeight = cell.cell.bottom
            
            if i != cells.count-1 {
                cell.drawSeparator()
            }
            
            i++
        }
        
        contentView.h = contentViewHeight
        height += contentViewHeight
        
        
        // footer
        
        if let footer = footerView {
            footer.y = height + 10
            section.addSubview(footer)
            height = footer.bottomWithOffset(10)
        }
        
        section.h = height
    }
    
    func titleDidChanged () {
        if let t = self.title {
            self.titleLabel = UILabel(
                x: 20,
                y: 0,
                width: YSFormWidth - 40,
                text: t,
                textColor: UIColor.TitleColor(),
                textAlignment: .Left,
                font: UIFont.TitleFont())
        } else {
            self.titleLabel = nil
        }
    }
}
