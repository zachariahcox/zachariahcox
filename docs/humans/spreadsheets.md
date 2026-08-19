# How to make resilient spreadsheets

## Sometimes your job is tables\!
<img width="367" height="368" alt="image" src="https://github.com/user-attachments/assets/d3e15fb1-9acb-4f0d-bc5d-142d0b0a800e" />

Spreadsheets (tables) are both a data structure and programming language, all rolled into one. That’s why they never cause any problems\!  
This is a set of best practices that makes spreadsheets more reliable, reusable, automatable, way more expensive to bootstrap, and cheaper to operate in the long run\!
Careful readers will notice that this is basically the MVC pattern, but for managers!

## Spreadsheet Style Guide

1. Each page of a sheet should do One Thing. Do not attempt to both collect data and implement business logic on the same page.
   Those things can be:  
   1. **Collect Raw data** -- make it easy for your users to add content.
   2. **Implement a single function** -- business logic with clear inputs and outputs
   3. **Display / UX** -- show us all your fanciest themes!
3. A page should not do two or more things (see point \#1 😂) 
4. A function page should be *debuggable* by *unit testing* the inputs and outputs.  
5. Raw data pages should optimize for copy-and-pasting from CSV (or other table formats)  
   1. EG: the “import as sheet” feature should Just Work ™   
   2. Try to minimize formatting on the data entry pages.  
6. Enforce your spreadsheet’s “APIs” with Data Validation rules  
   1. Use the data validation feature to constrain input. If a cell is supposed to be text, don’t leave it to chance\!  
   2. Use the write-locking feature to prevent mutation. (This has saved me more times than I can count.)  
7. Do not store structured data in a single cell
   1. ...especially if a human needs to edit it.
   2. Prefer to spread the entry over multiple data columns, then prettify it in the display pages.
8. Prefer google query language for business logic.  
   1. It is basically a hard-to-type version of sql but probably the best of the bad options and is usually simpler than arrayformulae if you can.  
   2. Use the “tables” feature to allow column name syntax in your queries  
   3. This makes your functions more resilient to moving columns around. The “employee id” columns will still work as long as you don’t rename it.  
9. Delete or hide “extra” rows and columns  
   1. This makes it easier to scroll through your spreadsheet and provides a visual indicator of how long this thing is\!
