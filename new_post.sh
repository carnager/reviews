output=content

touch "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "Title: $(mpc current --format '%artist% - %album% (%date%)')" > "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "Date: $(date '+%Y-%m-%d %H:%M')" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "Category: reviews" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "Tags:" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "status: draft" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "Authors: Rasi" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "Summary:" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "sidebarimage: /images/artists/$(mpc current --format '%artist%' | tr " " - | tr '[:upper:]' '[:lower:]').jpg" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo " " >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "<div id=\"covertracks\">" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "    <div id=\"cover\">" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
cp "/mnt/wasteland/Audio/Rips/$(dirname "$(mpc current -f '%file%')")/cover.png" "$output"/images/covers/cover-$(mpc current --format '%album%' | tr " " - | tr '[:upper:]' '[:lower:]').jpg
echo "<img src=\"/images/covers/cover-$(mpc current --format '%album%' | tr " " - | tr '[:upper:]' '[:lower:]').jpg\" width="500" alt=\"$(mpc current --format '%album%')\">" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "    </div>" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "    <div id=\"tracklist\">" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "$(mpc playlist --format '%track% %title%<br />')" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "    </div>" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "</div>" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo " " >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "### Introduction" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo " " >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "### The Sound" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo " " >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "### Preview" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "<iframe src="https://embed.spotify.com/?uri=SPOTIFY_URI" frameborder="0" allowtransparency="true"></iframe>" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo " " >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md
echo "### Weblinks" >> "$output"/"$(mpc current -f '%artist%-%album%' | tr -s ' ' '_')".md

