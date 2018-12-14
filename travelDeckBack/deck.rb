require 'squib'

data = Squib.csv file: 'testcsv.csv'
layouts = ['textLayout.yml', 'iconsLayout.yml', 'layout.yml']

Squib::Deck.new cards: data['name'].size, width: '2.75in', height: '4.75in', layout: layouts do
  background color: 'white'
  svg file: data['border'], layout: 'border'
  rect layout: 'cut'
  text str: data['name'], layout: 'title', font: 'Edwardian Script ITC 16', y: 120
  text str: data['address'], layout: 'address', font: 'Arial 8'
  text str: data['description'], layout: 'description'
  svg file: './icons/info.svg', layout: 'info'
  svg file: './icons/favorite.svg', layout: 'favorite'
  svg file: './icons/help.svg', layout: 'help'
  save_png
  save_pdf trim: 37.5
end
