YSForms
=======

create customisable registration forms for ios quickly with validation. written in swift.

Demo
----

![alt tag](https://raw.githubusercontent.com/yemeksepeti/YSForms/master/demo.gif)

Install
-------

#### Manual

Copy & Paste `YSForms` folder into your project

#### Cocoapods

Soon

Usage
-----

Create a `YSForm` and add it `YSFormSection`s.  
Add your sections `YSFormCell`s

``` swift
        let form = YSForm()
        
        let firstSection = YSFormSection(tag: "sec 1", title: nil)
        firstSection.addCell(YSFormTextFieldCell(tag: "first", title: "First Name", value: nil))
        firstSection.addCell(YSFormTextFieldCell(tag: "last", title: "Last Name", value: nil))
        firstSection.addCell(YSFormTextFieldCell(tag: "address", title: "Address", value: nil))
        
        let secondSection = YSFormSection(tag: "sec 2", title: "Information")
        secondSection.addCell(YSFormTextFieldCell(tag: "city", title: "City", value: nil))
        secondSection.addCell(YSFormTextViewCell(tag: "notes", title: "Notes", value: nil))
        secondSection.addCell(YSFormTextViewCell(tag: "add", title: "Additional", value: nil))
        
        form.addSection(firstSection)
        form.addSection(secondSection)
        
        let scroll = TPKeyboardAvoidingScrollView(frame: view.frame)
        view.addSubview(scroll)
        
        scroll.addSubview(form.form)
        scroll.contentHeight = form.form.h
```

Custom Cells
------------

Subclass the `YSFormCell` and override its `init:tag:title:value` init method.
You can design & draw its `cell` here.


YSFormCellAppearance
--------------------

You can use an appearance `struct` for a general form design consept.
Looks like this

``` swift
struct YSFormCellAppearance {
    
    var textColor: UIColor
    var textFont: UIFont
    
    var detailTextColor: UIColor
    var detailTextFont: UIFont
    
    var placeholderColor: UIColor
    var placeholderFont: UIFont
    
    var floatingPlaceholderColor: UIColor
    var floatingPlaceholderActiveColor: UIColor
    var floatingPlaceholderFont: UIFont

}
```
