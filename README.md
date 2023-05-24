# Fetch-Me-A-Meal-

Hello, welcome to Fetch Me a Meal!, a simple app that shows deserts.

Things I would do differently:
- Add a splash screen or some sort of loader screen until the original request finishes.
- Add a search bar
- Parse the instructions so they all look the same (but better to do this from the backend). Same said for the ingredients and measurements 
- Break up SwiftUI views via View Builders for Readability

Other things to note:
- I used a sheet to show the detail view instead of popping the view via a nav link
  - Reason is Navlinks will load their views onAppear unless you add logic to make them lazy.
  - This adds unnecessary api calls
- I used print statements for errors and to show if the image is cached or not.
- I documented some things via comments. 
- I targeted iOS 15

Let me know if you need anything else and I would appreciate it if you would let me know what I did wrong / what I can improve on.

