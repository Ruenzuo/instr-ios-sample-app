# instr-ios-sample-app

### How to add [`instr`](https://github.com/Ruenzuo/instrumentality) to your iOS project

Follow the commit-by-commit guide in this [pull request](https://github.com/Ruenzuo/instr-ios-sample-app/pull/1).

1. Add `instr` to your Gemfile.
2. Run `bundle exec instr generate-header benchmark` and move the header to a proper place.
3. Import header to Xcode project.  
   Optional: create a custom header with simple API for auto generated methods.  
   If your project uses Swift: Add header to Swift bridging header.  
4. Place static probes in your project, marking the places you want to benchmark.
5. Modify the start up of your app to use [`instrserver`](https://github.com/Ruenzuo/instrserver).
   Tip: Use conditional compilation to avoid launching the server in non-test runs.

You're all set up! Now you can start the benchmark running:

```bash
bundle exec instr profile benchmark InstrSampleApp --workspace=InstrSampleApp.xcworkspace/ --server-port=8081
```

You should get an output file `instr.jtl` that looks something like this:

```
timeStamp,elapsed,label,responseCode,success
1518345368,79,ViewController,200,true
1518345368,554,DetailViewController,200,true
```
