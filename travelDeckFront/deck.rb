require 'squib'

data = Squib.csv file: 'cards.csv'
layouts = ['imageLayout.yml', 'layout.yml']


Squib::Deck.new cards: data['name'].size, width: '2.75in', height: '4.75in', layout: layouts do
  background color: 'white'
  rect layout: 'cut'
  png file: data['image'], layout: 'image'
  svg file: data['border_front'], layout: 'border'

  text str: data['name'], layout: 'title', font: 'Edwardian Script ITC 16', y: 120, color: '#EACD98'
  save_png
  save_pdf trim: 37.5
end
