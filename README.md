# thrive-technical

This solution is a bare-bones procedural script to acheive the specs of the technical test. Improvements could be made to make the code more SOLID using classes to isolate the core error handling, input, processing and output logic. Composition could then be used to instatiate a class as needed. This would make the code easier to read and maintain. However, for the purposes of this exercise, such requirements were not specifed.

**Error Handling**

A `begin rescue end` block wraps the processing logic to handle errors, e.g. missing keys or wrong data type, in a more user friendly way. This script could also be improved by adding another layer of validation for required keys, and data types, and raise a meaningful error indicating which record is erroneous and why. 

**To run**
- Ensure you are in root folder `/thrive-technical`
- Run IRB in console `irb`
- Load script `load 'script.rb'`
