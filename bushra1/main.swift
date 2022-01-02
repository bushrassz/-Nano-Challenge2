//
//  main.swift
//  bushra1
//
//  Created by bushra  on 19/05/1443 AH.
//

import Foundation


    


func addBook(BookName : String){
    
    /*print("please add book information")
    print("the title of book:")
   var title = readLine()
    print("name the author:")
   var author = readLine()
    print("Year of publication:")
   var year = readLine()*/
    
    
    print("please add book information")
    print("the title of book:")
    var booknmae = readLine()!
    
    print("name the author:")
    var bookauthor = readLine()!
    
    //readingList.append( booknmae.)
   
    //readingList.append( bookauthor)
    
   
    //readingList.append( year!)
    
    //print("youer book added")
    
    //show_books()
    
     print("youer book added \(readingList)!")
    
 
}

func show_books(){
    
    print("this is avalable book \(readingList)!")
    
}

func removeBook(BookName : String){
    
  
            for (index, element) in readingList.enumerated() {
                
                if (element.bookName == BookName){
                readingList.remove(at: index)
                    print("the book hass been removed")
                    print(readingList)
            }
  
    }
    
    
    
}

func findBook(BookName : String) {
    
    for  iteam in readingList {
        if (iteam.bookName == BookName)
        //print(reading_list[item])
        { print( (iteam))}
    }
    
    
}


//var reading_list2 = ["book": "storylife" ,"author": "ahmad" ,"year": "2000"]
//var reading_list = ["book1","ahmad","2000"]


var readingList : [bookInfo]  = []
var book1 = bookInfo(bookName: "storylife" , authorName : "Ahmed")
var book2 = bookInfo(bookName: "story" , authorName : "bushra")

readingList.append(book1)
readingList.append(book2)


print("""
      Welcome everyone
      ---------------------------------------------------------------
      Do you want to browse our services
      ---------------------------------------------------------------
      """
)


var selected_option :String = ""
repeat{
Action()

func Action(){
    
    print("""
          Please enter one of the following options:
          'a' to add a book 📔
          'l' to list the books 📔
          'r' remove Book📔
          's' search Book📔
          'q' to quit
          \nWhat would you like to do?
          ---------------------------------------------------------------\n
          """
    )}
    
    
//var selected_option :String = ""


if let input = readLine(){
    selected_option=input
    
    switch selected_option{
        
    case "a":
       
        var booknmae = readLine()!
        addBook(BookName: booknmae)
        
    case "l":
        show_books()
        
        
    case "r":
        print("what is the name of the book do you want to remove ")
        var booknmae = readLine()!
        removeBook(BookName:booknmae )
        
    case "s":
        print("what is the name of the book do you want to search ")
        var booknmae = readLine()!
        findBook(BookName:booknmae )
        
    case "q":
        
        print("quit")
        
    default:
        
        print("Sorry, \(selected_option) isn't a valid option.")
        
        
    }
    
}

else{
    
    print("error in readind the user input")
    
}

}while selected_option != "q"



struct bookInfo {
    var bookName = ""
    var authorName = ""
    
}

