# spenn

A Demo app for spenn interview

# Focus
-   The code base is focusing on maintainability of the project,as experienced maintaining big flutter project can be quite tricky, so with bad structure can be worse!, the following architecture is therefore prefferred:


- View: Shows the UI to the user. Single widgets also qualify as views (for consistency in terminology) a view, in this case, is not a "Page" it's just a UI representation.

- ViewModel: Manages the state of the View, business logic, and any other logic as required from user interaction. It does this by making use of the services

- Services: A wrapper of a single functionality/feature set. This is commonly used to wrap things like showing a dialog, wrapping database functionality, integrating an API, etc.


# How to run the project locally
-   Make sure you are using stable flutter channel any version will work
-   Run ```flutter run``` command to build the required route files just once you open the project
-   Android device from android 9 "pie" is targergeted be aware!


