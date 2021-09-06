# App Construction Notes

1. In VS Code, View -> Command Palette -> flutter New Application (to get the app template).
2. `flutter run -d chrome`.
3. Add new project in firebase console.
4. `firebase logout` and then `firebase login`.
5. `firebase init` (may need to setup Storage first in Firebase console).
6. `flutter build web`
7. Copy the newly built files inside of `build/web/.` into the main directory `public/` folder (all files and folders -- `-r`).
8. `cd` into the main dir with the `firebase.json` file in it and issue `firebase deploy --only hosting`.

