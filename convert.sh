#! /bin/bash
echo "  Menu:
        i) my_book.epub
        ii) Class_Report.md
        Choose which one you want to convert (i/ii) "
read opt
if [ "$opt" = "i" ];
then
  echo " Select type for the book:
        i) txt
        ii) html
        Choose into what you want to convert it into (i/ii) "
  read bopt
  if [ "$bopt" = "i" ];
  then
        pandoc -s my_book.epub -o my_book.txt
        echo " Convertion done! "
        echo " New Directory: "
        ls
        vim my_book.txt
  elif [ "$bopt" = "ii" ];
  then
        pandoc -s my_book.epub -o my_book.html
        echo " Convertion done! "
        echo " New Directory: "
        ls
        vim my_book.html
  else
        echo " The option you chose does not exist, please try again!"
  fi
elif [ "$opt" = "ii" ];
then
        echo " Select type for the report:
        i) pdf
        ii) html
        Choose into what you want to convert it into (i/ii) "
  read ropt
  if [ "$ropt" = "i" ];
  then
        pandoc -N --quiet --variable "geometry=margin=1.2in" --variable mainfont="Sans Regular" --variable sansfont="Sans Regular" --variable monofont="Sans Regular" --variable fontsize=12pt --variable version=2.0 Class_Report.md --pdf-engine=xelatex --toc -o Class_Report.pdf*
        echo " Convertion done! "
        echo " New Directory: "
        ls
  elif [ "$ropt" = "ii" ];
  then
        pandoc -s Class_Report.md --metadata title="HCI Report" -o Class_Report.html
        echo " Convertion done! "
        echo " New Directory: "
        ls
  else
        echo " The option you chose does not exist, please try again!"
  fi
else
  echo " The option you chose does not exist, please try again!"
fi

