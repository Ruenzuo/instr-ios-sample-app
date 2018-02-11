# instr-ios-sample-app

### How to add `instr` to your iOS project

1. Add `instr` to your Gemfile.
2. Run `bundle exec instr generate-header benchmark` and move the header to a proper place.
3. Import header to Xcode project.  
   Optional: create a custom header with simple API for auto generated methods.  
   If your project uses Swift: Add header to Swift bridging header.  
4. Place static probes in your project, marking the places you want to benchmark.
5. Modify the start up of your app to use `instrserver`.
   Tip: Use conditional compilation to avoid launching the server in non-test runs.
