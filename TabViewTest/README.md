#  TabViewTest

This project demonstrates an apparent bug in TabViews on iOS.

To see the problem, build and lanuch the app on a Mac. It shows a simple interface with a TabView containing 2 tabs.

Both tabs contain buttons set to be the default button for that tab. 

I would think that when you press enter, the default button on the active tab would be triggered. Instead, the button action in Tab 1 is triggered even if Tab 2 is selected.

