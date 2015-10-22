# mandarin-ebook
Chinese language learning app (Ruby on Rails/JavaScript)

Mandarino! is a lightweight proof of concept for a web-based Mandarin Chinese ebook. Textbook content from Chapter 1 of Far East Everyday Chinese 3 is for demonstration purposes only. 

This was originally buit in Ruby on Sinatra, and I'm now in the process of porting it to Rails. The Rails version also includes some improvements to the structure of the database to allow for future feature additions.

Users are able to highlight vocabulary words in a chapter's readings and view a pop-up window showing the word's definition as defined in the textbook. This feature was designed to address the multitude of contextual variations in meaning that exist to a far greater extent in Mandarin than in Romance languages, and the failure of Google Translate and other dictionaries to address this problem. Words that a user has looked up will then be highlighted in yellow in the vocab list for that chapter, and a study list is generated containing all characters a user has looked up, along with each word's total lookup count.

Moving into the future, I plan to add features to the Rails version that will:
- Sort study list by frequency
- Display a characters' radical/components in the left-hand panel beside a reading.
- Allow users to add notes and example sentences directly to the textbook's vocab list.
- Allow users to keep a searchable notebook of their own creation.
