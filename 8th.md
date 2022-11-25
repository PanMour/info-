[Overcoming Barriers to the Utilization of Technology in the classroom](https://books.google.gr/books?id=hwPWEGBAlfMC&pg=PA93&dq=technology+in+schools&hl=el&sa=X&ved=2ahUKEwiKk9bNlsn7AhVHOewKHUXWCuwQ6AF6BAgHEAI#v=onepage&q&f=false)
# Convertion
  - pandoc -s book.epub -o book.html
  - pandoc -s book.epub -o book.txt
  - pandoc -N --quiet --variable "geometry=margin=1.2in" --variable mainfont="Noto Sans Regular" --variable sansfont="Noto Sans Regular" --variable monofont="Noto Sans Regular" --variable fontsize=12pt --variable version=2.0 myReport.md --pdf-engine=xelatex --toc -o myReport.pdf
  - pandoc -s myReport.md --metadata title="H anafora moy" -o myReport.html
# Shell Script
  - #! /bin/bash
  - chmod +x File_name
  - echo = Γράψε
  - ls = Εκτελή Εντολή
  - #= Σχόλιο
  - $Κάτι = Μεταβλητή
  - echo $PWD = Εμφανίζει το Directory
  - name = Panos για να την χρησιμοποιήσουμε βάζουμε echo My name is $name
  - read Κάτι = Διάβασε. Η μεταβλητή παραμένει στο όνομα που δώσαμε, π.χ. στο κάτι
  - ./όνομα_αρχείου.sh = Εκτέλεση εντολών στο terminal
  - read -p κάτι = Βάζει την προσθήκη στην ίδια γραμμή
  - 
