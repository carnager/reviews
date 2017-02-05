output=content

touch "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md

cat << EOF > "${output}/$(mpc current -f '%artist%-%album%' | tr -s ' ' '_').md"
Title: $(mpc current --format '%artist% - %album% (%date%)')
Date: $(date '+%Y-%m-%d %H:%M')
Category: reviews
Tags:
status: draft
Authors: Rasi
Summary:
sidebarimage: /images/artists/$(mpc current --format '%artist%' | tr " " - | tr '[:upper:]' '[:lower:]').jpg

<div id="covertracks">
<div id="cover">
EOF

cp "/mnt/wasteland/Audio/Rips/$(dirname "$(mpc current -f '%file%')")/cover.jpg" "$output"/images/covers/cover-$(mpc current --format '%album%' | tr " " - | tr '[:upper:]' '[:lower:]').jpg

cat << EOF >> "${output}/$(mpc current -f '%artist%-%album%' | tr -s ' ' '_').md"
<img src="/images/covers/cover-$(mpc current --format '%album%' | tr " " - | tr '[:upper:]' '[:lower:]').jpg" width="500" alt="$(mpc current --format '%album%')">
</div>
<div id="tracklist">
<h3>Tracklist</h3>
<ol>
$(mpc playlist -f '%title%' | awk '{print "<li>" $0}' | awk '{print $0 "</li>"}')
</ol>
</div>
</div>

### Introduction

### The Sound

### Preview
<iframe src="https://embed.spotify.com/?uri=SPOTIFY_URI" frameborder="0" allowtransparency="true"></iframe>

### Weblinks
EOF
