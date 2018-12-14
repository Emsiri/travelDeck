require 'squib'

data = Squib.csv file: 'testcsv.csv'
layouts = ['layout.yml', 'imageLayout.yml']

Squib::Deck.new cards: data['name'].size, width: '2.75in', height: '4.75in', layout: layouts do
  background color: 'white'
  rect layout: 'cut'
  rect layout: 'safe'
  rect
  text str: data['name'], layout: 'title', font: 'Edwardian Script ITC 16', y: 70, color: '#EACD98'
  png file: data['image'], layout: 'image'
  # png file: data['border'], layout: 'border'
  save_png
  save_pdf trim: 37.5
end
