//
//  main.swift
//  Pattern1
//
//  Created by latha-16226 on 26/12/22.
//


 import Foundation
 
 /*
 
 var numberOfRow , rowFill , space , columnFill : Int
 var value : Int
 print("Enter number of row value")
 numberOfRow = Int(readLine()!)!
 
 for rowFill in 1...numberOfRow
 {
 value = rowFill
 
 /*
  for _ in rowFill..<numberOfRow
  {
  print(terminator: "     ")
  }
  */
 for columnFill in 1...rowFill
 {
 print( value , terminator: "   ")
 value = value + (numberOfRow - columnFill)
 }
 print()
 }
 
  */
 



import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow!

    func applicationDidFinishLaunching(_ notification: Notification)
    {
        NSLog("Start app")

       /* window = NSWindow(contentRect: NSMakeRect(0, 0, 1024, 768),
            styleMask: [.closable, .titled],
            backing: .buffered,
            defer: false)

        window.title = "Hey, new Window!"
        window.center()
        window.orderFrontRegardless()
        */
        
    
        
        var view = NSView(frame: NSRect(x: 0, y: 0, width: 200, height: 200))
        view.translatesAutoresizingMaskIntoConstraints = false
        var window = NSWindow(contentRect: view.frame, styleMask: [.closable, .titled, .resizable], backing: .buffered, defer: true)
        window.contentView = view

        var red = NSView()
        red.translatesAutoresizingMaskIntoConstraints = false
        red.wantsLayer = true
        red.layer?.backgroundColor = .init(red: 1, green: 0, blue: 0, alpha: 1)

        var blue = NSView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        blue.wantsLayer = true
        blue.layer?.backgroundColor = .init(red: 0, green: 0, blue: 1, alpha: 1)

        view.addSubview(blue)
        view.addSubview(red)
        //NSLayoutConstraint(item: red, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 0).isActive = true

        NSLayoutConstraint.activate([
           
           
            red.topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: red.bottomAnchor),
            blue.topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: blue.bottomAnchor),
            
            red.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blue.leadingAnchor.constraint(equalTo: red.trailingAnchor),
            view.trailingAnchor.constraint(equalTo: blue.trailingAnchor),
            
             
            red.widthAnchor.constraint(equalTo: blue.widthAnchor),
            
            
            red.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            red.widthAnchor.constraint(lessThanOrEqualToConstant: 400),
            
            
            red.heightAnchor.constraint(equalTo: blue.heightAnchor),
            
            red.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            red.heightAnchor.constraint(lessThanOrEqualToConstant: 600),
            
            
            
            
            /*
            red.topAnchor.constraint(equalTo: view.topAnchor),
            red.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            blue.topAnchor.constraint(equalTo: view.topAnchor),
            blue.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            red.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            red.trailingAnchor.constraint(equalTo: blue.leadingAnchor),
            blue.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            red.widthAnchor.constraint(equalTo: blue.widthAnchor),
             */
        
        /*
        blue.topAnchor.constraint(equalTo: view.topAnchor),
        blue.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        red.topAnchor.constraint(equalTo: view.topAnchor),
        red.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        blue.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        blue.trailingAnchor.constraint(equalTo: red.leadingAnchor),
        red.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        
        red.widthAnchor.constraint(equalTo: blue.widthAnchor),
        
            red.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            red.widthAnchor.constraint(lessThanOrEqualToConstant: 600),
         */
        
        ])
    

        //blue.widthAnchor.constraint(equalToConstant: 100).isActive = true
        //blue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        //blue.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //blue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        window.makeKeyAndOrderFront(nil)

      
        
        
        /*
        var view = NSView()
        view.translatesAutoresizingMaskIntoConstraints = false
        var red = NSView()
        red.translatesAutoresizingMaskIntoConstraints = false
        var green = NSView()
        green.translatesAutoresizingMaskIntoConstraints = false
        var blue = NSView()
        blue.translatesAutoresizingMaskIntoConstraints = false
        var yellow = NSView()
        yellow.translatesAutoresizingMaskIntoConstraints = false
        var window = NSWindow(contentRect: view.frame, styleMask: [.resizable, .titled, .closable], backing: .buffered, defer: true)
        window.contentView = view

        red.wantsLayer = true
        green.wantsLayer = true
        blue.wantsLayer = true
        yellow.wantsLayer = true

        red.layer?.backgroundColor = .init(red: 1, green: 0, blue: 0, alpha: 1)
        green.layer?.backgroundColor = .init(red: 0, green: 1, blue: 0, alpha: 1)
        blue.layer?.backgroundColor = .init(red: 0, green: 0, blue: 1, alpha: 1)
        yellow.layer?.backgroundColor = .init(red: 1, green: 1, blue: 0, alpha: 1)

        view.addSubview(red)
        view.addSubview(green)
        view.addSubview(blue)
        view.addSubview(yellow)

        NSLayoutConstraint.activate([
            red.topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: red.bottomAnchor),
            green.topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: green.bottomAnchor),
            blue.topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: blue.bottomAnchor),
            yellow.topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: yellow.bottomAnchor),
            
            
            red.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            red.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            green.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            green.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            blue.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            blue.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            yellow.widthAnchor.constraint(greaterThanOrEqualToConstant: 100),
            yellow.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            red.widthAnchor.constraint(lessThanOrEqualToConstant: 300),
            red.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            green.widthAnchor.constraint(lessThanOrEqualToConstant: 300),
            green.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            blue.widthAnchor.constraint(lessThanOrEqualToConstant: 300),
            blue.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            yellow.widthAnchor.constraint(lessThanOrEqualToConstant: 300),
            yellow.heightAnchor.constraint(lessThanOrEqualToConstant: 300),
            
             
            
            view.leadingAnchor.constraint(equalTo: red.leadingAnchor),
            red.rightAnchor.constraint(equalTo: green.leftAnchor),
            green.rightAnchor.constraint(equalTo: blue.leftAnchor),
            blue.rightAnchor.constraint(equalTo: yellow.leftAnchor),
            yellow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            red.widthAnchor.constraint(equalTo: green.widthAnchor),
            red.widthAnchor.constraint(equalTo: blue.widthAnchor),
            red.widthAnchor.constraint(equalTo: yellow.widthAnchor),
        ])

        window.makeKeyAndOrderFront(nil)
    
         */
        
    }
         
        
        
        
    func applicationWillTerminate(_ notification: Notification) {
        NSLog("Terminate app")
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

let app = NSApplication.shared
let appDelegate = AppDelegate()
app.delegate = appDelegate
app.run()

 
 
 
 
 
 



/*
import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        print("Application did finish launching")
    }
}

let app = NSApplication.shared
let delegate = AppDelegate()

app.delegate = delegate
app.run()

*/
