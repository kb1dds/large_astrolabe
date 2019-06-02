# large_astrolabe
A large astrolabe suitable for laser cutting.  This is a modern restyling of Chaucer's astrolabe described in his famous (and very readable) _Treatise_on_the_Astrolabe_, circa 1400.  The two main differences are that I incorporate the equation of time into the sun's right ascension, and that the sun's right ascension is given by calendar days instead of signs of the zodiak.  The back is quite different, since I don't need a trig table... and because we now have an accurate equation of time.

A picutre of a finished example can be found [http://mathematicalmachines.blogspot.com/2019/05/astrolabe-upgrade.html]
Construction details for a wood and paper version (no laser cutter nor 3d printer required) using essentially the same files can be found [https://mathematicalmachines.blogspot.com/2019/01/wooden-astrolabe.html]

(c) 2019 Michael Robinson

This work is licensed under the Creative Commons Attribution 4.0 International License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/

## Files included in this repository
The astrolabe consists of two laser cut sheets (one of which is two-sided) and two 3d printed pointers.  The two-sided sheet is opaque (this combines the what is traditionally called the "mater" and the "tympan"), while the one-sided sheet (traditionally called the "rete") is transparent.

The files included are:
1. The front of the opaque sheet (SVG)
2. The back of the opaque sheet (SVG)
3. The back of the transparent sheet (it's etched in reverse!) (SVG)
4. The OpenSCAD source for the pointer
5. The STL file for the pointer
6. A Jupyter notebook that generates the original SVG files, which were then manually cleaned and formatted for our laser cutter.

## Construction
You need to print two copies of the pointer, one copy of the transparent sheet, and both sides of the opaque sheet.  The thumb ring at the top of the astrolabe helps to keep the front and back sides aligned when laser cutting: once you've cut one size, simply remove the half-printed astrolabe and flip it back into the cutout you just made.  That way the front and back should be aligned.  Make sure to check that it *is* aligned, though!

The astrolabe is held together with one standard 6-32 machine screw that's at least 3/4" long and one 6-32 nut.  You can use a wing nut if you like.  The astrolabe is made in four layers:

1. The back pointer
2. The opaque sheet
3. The transparent sheet (oriented so that its etched size is in contact with the front face of the opaque sheet)
4. The front pointer

The pointers have "wings" to help take sightings through the centerline of the astrolabe clear of the head or the nut of the screw.  The wings face outward on both sides of the astrolabe.

## Front scales
Starting from the center (moving outward) of the front of the astrolabe, the scales are
1. Right ascension (hours and tens of minutes)
2. Sun right ascension (calendar) (days in a mean solar year, but not evenly spaced)
3. Local apparent solar time (hours and 15 minutes)
4. True north oriented compass (degrees)

Contours on the front:
* The azimuth contours on the front of the astrolabe are every 10 degrees.
* The elevation contours on the front of the astrolabe are every 2 degrees, with a heavy contour every 10 degrees.
* The declination contours on the transparent sheet are every 10 degrees.
* The right ascension contours on the transparent sheet are every hour.

## Back scales
Starting from the center (moving outward) of the back of the astrolabe, the scales are
1. Days of the year, grouped by fives (evenly spaced)
2. Calendar (days in a mean solar year, evenly spaced)
3. Division of the circle into hours and 15 minutes
4. Elevation sighting (degrees), intended for the astrolabe to be hung by the right hand with pointer facing to the left

The equation of time contours are spaced every 2 minutes, with the heavy contour representing agreement between apparent and mean solar time.  When the equation of time curve is inside the heavy circle, it means that the local apparent solar time is ahead of mean time by the amount indicated.

## Accuracy and equation of time
With some care, you should expect to get elevation sightings within a degree or two of the true elevation.   You should be aware that this is accurate enough to see the difference between local apparent solar time and mean solar time, so you should use the equation of time etched on the back to compensate accordingly.  Making this correction, I routinely get measurements of local mean time to within about 20 minutes of the right time.

The calendar scale on the front of the astrolabe is already corrected for the equation of time, in that the right ascension of the sun will be correct.  (This is why you need to apply the equation of time correction separately to get local mean solar time.)  The calendar scale on the back of the astrolabe is *not* the same (days are uniformly spaced on the back) so that you get correct equation of time readings.

## Modification for other latitudes or other changes you might want
The Jupyter notebook is very flexible, and it has many options you might want to adjust to suit your preferences.

This astrolabe is for use near a single latitude, that being 39 degrees North.  You will probably get satisfactory results within a few degrees of that latitude.  If you wish to make an astrolabe for a different latitude, you must modify the front sheet (only).  The other files do not need modifications for other northern latitudes.  Rerun the Jupyter notebook with your desired latitude, which is a setting near the very top of the notebook.  You must then manually edit the resulting files that the Jupyter notebook produces (you only need the one named "tympan_<latitude>.svg") so that they are suitable for laser cutting.  This cleanup is rather time consuming!  In my case, I made the following adjustments:

1. Trim the azimuth and elevation contours so they don't run into the other scales
2. Bold every ten degree increment in the elevation contours
3. Label the unequal hours
4. Mark the latitude so that it's obvious
5. Set the colors and the line widths to suit your laser cutter.  I found the text looked best when filled for raster (black) and outlined with vector (blue).
6. Add a thumb ring.  (Hint: copy the outer cut countour -- red -- so that it's exactly the same dimensions for the front and back, taking care that the centers are aligned precisely)
7. Set the diameter of the center hole to be 5/32" so that a 6-32 machine screw will pass freely but with no side play.

If you are just visiting another latitude, you can rerun the Jupyter notebook to make a paper insert with a printout of just the center of the of the front sheet (the azimuth and elevation contours, which is traditionally called the "tympan").  You can slip this behind the transparent sheet and you're good to go.  I find it helpful to tack the paper to the opaque sheet with a tiny dab of mounting putty so that it doesn't move around when rotating the transparent sheet (the "rete").

If you want an astrolabe for southern latitudes, you will also need to modify the transparent sheet as it contains a star chart.  This would involve extensive modifications to the Jupyter notebook and is not recommended.
