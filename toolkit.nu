export def create_custom_color [color: string, rgb: string] {
	mkdir static/img/theme-colors assets/css/color
	ffmpeg -f lavfi -i $"color=($rgb):50x50:d=3,format=rgb24" -frames:v 1 $"static/img/theme-colors/($color).png" -y
	$":root {(char newline)  --accent: ($rgb);(char newline)}" | save $"assets/css/color/($color).scss" --force
}
