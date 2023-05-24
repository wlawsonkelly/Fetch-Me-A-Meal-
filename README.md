# Fetch-Me-A-Meal-

Hello, welcome to Fetch Me a Meal!, a simple app that shows deserts.

Things I would do differently:
1. Add a splash screen or some sort of loader screen until the original request finishes.
2. Add a search bar
3. Parse the instructions so they all look the same (but better to do this from the backend). Same said for the ingredients and measurements 
4. Break up SwiftUI views via View Builders for Readability

Other things to note:
1. I used a sheet to show the detail view instead of popping the view via a nav link
  1. Reason is Navlinks will load their views onAppear unless you add logic to make them lazy.
  2. This adds unnecessary api calls
2. I used print statements for errors and to show if the image is cached or not.
3. I documented some things via comments. 

Let me know if you need anything else and I would appreciate it if you would let me know what I did wrong / what I can improve on.

