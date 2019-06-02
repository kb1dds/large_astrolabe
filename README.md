# large_astrolabe
A large astrolabe suitable for laser cutting

(c) 2019 Michael Robinson

This work is licensed under the Creative Commons Attribution 4.0 International License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/

## Files included in this repository
The astrolabe consists of two laser cut sheets (one of which is two-sided) and two 3d printed pointers.  The two-sided sheet is opaque, while the one-sided sheet is transparent.

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

However, the calendar scale on the front of the astrolabe is already corrected for the equation of time, in that the right ascension of the sun will be correct.  The calendar scale on the back of the astrolabe is *not* the same (days are uniformly spaced on the back) so that you get correct equation of time readings.

## Modification for other latitudes
This astrolabe is for use near a single latitude, that being 39 degrees North.  You will probably get satisfactory results within a few degrees of that latitude.

If you wish to make an astrolabe for a different latitude, you'll need to modify the front sheet (only).  The other files do not need modifications for other northern latitudes.  You will need to rerun the Jupyter notebook with your desired latitude.  You must then manually edit the resulting files that the Jupyter notebook produces so that they are suitable for laser cutting.  This cleanup is rather time consuming!

If you want an astrolabe for southern latitudes, you will also need to modify the transparent sheet as it contains a star chart.  This would involve extensive modifications to the Jupyter notebook and is not recommended.
