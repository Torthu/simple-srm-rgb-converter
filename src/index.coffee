mbConvert = (require 'microbrewit-formulas').convert

# Get elements
srmElement = document.getElementById 'srm'
srmValueElement = document.getElementById 'srmValue'
rgbElement = document.getElementById 'rgb'

updateRGB = ->
	srm = srmElement.value
	rgb = mbConvert.convert(srm, 'srm', 'rgb')

	style = "background: rgba(#{rgb}, 1);"

	if (rgb.split ',')[1] < 94
		style += 'color: white;'
	else
		style += 'color: black;'


	rgbElement.innerHTML = rgb
	rgbElement.setAttribute 'style', style

	srmValue.innerHTML = srm

updateRGB()

srmElement.addEventListener 'input', updateRGB, false
document.addEventListener 'keyup', updateRGB, false