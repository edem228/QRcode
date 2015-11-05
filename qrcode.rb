require 'rqrcode'
require 'rqrcode_png'


puts "saisir un texte dans la console"
answer = gets.chomp
qr = RQRCode::QRCode.new( answer, :size => 4, :level => :h )
puts qr.to_s

#save as png
png = qr.to_img                                             
png.resize(200, 200).save("qrcode-#{answer}.png")