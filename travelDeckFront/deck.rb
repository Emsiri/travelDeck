require 'squib'

data = Squib.csv file: 'cards.csv'
layouts = ['imageLayout.yml', 'layout.yml']

backgrounds = [
  :attraction => 'borders/blue_back.svg',
  :other => 'borders/red_back.svg'
]

Squib::Deck.new cards: data['name'].size, width: '2.75in', height: '4.75in', layout: layouts do
  background color: 'white'
  rect layout: 'cut'
  png file: data['image'], layout: 'image'
  svg file: 'borders/blue_front.svg', layout: 'border'

  text str: data['name'], layout: 'title', font: 'Edwardian Script ITC 16', y: 120, color: '#EACD98'
  save_png
  save_pdf trim: 37.5
end
