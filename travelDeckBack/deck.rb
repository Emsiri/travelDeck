require 'squib'

data = Squib.csv file: 'testcsv.csv'
layouts = ['iconsLayout.yml', 'layout.yml', 'textLayout.yml']

Squib::Deck.new cards: data['name'].size, width: '2.75in', height: '4.75in', layout: layouts do
  background color: 'white'
  svg file: data['border'], layout: 'border'
  rect layout: 'cut'
  text str: data['name'], layout: 'title', font: 'Edwardian Script ITC 16', y: 120
  text str: data['address'], layout: 'address'
  text str: data['description'], layout: 'description'
  svg file: './icons/info.svg', layout: 'info'
  svg file: './icons/favorite.svg', layout: 'favorite'
  svg file: './icons/help.svg', layout: 'help'
  line x1: 150, x2: 675, y1: 335, y2: 335, stroke_width: 4, cap: 'round'
  line x1: 150, x2: 675, y1: 635, y2: 635, stroke_width: 4, cap: 'round'
  line x1: 150, x2: 675, y1: 935, y2: 935, stroke_width: 4, cap: 'round'
  save_png
  save_pdf trim: 37.5
end
