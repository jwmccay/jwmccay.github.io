Brisbane Sunset
===============
I live just east of a big hill, and it gets dark a lot earlier than sunset. I wrote a `Python package <https://github.com/jwmccay/brisbane-sunset>`_ that tells me when the local sunset will be.

It works pretty well! Here's a picture from a local community center taken at 3:59 PM.

.. image:: images/brisbane_sunset/mission_blue_sunset_mod.jpeg
   :alt: Sunset over San Bruno mountain
   :width: 600px
   :align: center

The sunset began at 3:56 PM and ended at 3:58 PM. If I run::

    sunset-run -d "2025-1-05" -oc "37.6924344,-122.4150331" \
        -r "data/n37_w123_subset_reproject.tif" \
        -cm "xy" \
        -vl 2700 -ni 100 -cm "xy" \
        -dp -fd "data/figs"

I get a prediction of 3:55 PM. Only off by a couple minutes, which is pretty good given the grid resolution and uncertainty in when the sunset is actually done. The predicted vector at the time of occlusion also lines up well with where the sun is in the picture above.

.. image:: images/brisbane_sunset/mesh.png
   :alt: Vector at time of occlusion
   :width: 600px
   :align: center

I also have a script that finds the sunset time everywhere on a subset of the grid. Areas with direct western exposure have a sunset just after 5 PM on that day, which is the official sunset time. Areas in canyons barely see the sun after noon.

.. image:: images/brisbane_sunset/grid_result.png
   :alt: Sunset over San Bruno mountain
   :width: 600px
   :align: center

