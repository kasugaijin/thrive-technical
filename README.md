# thrive-technical

This solution is a bare-bones procedural script to acheive the specs of the technical test. Improvements could be made to make the code more SOLID using classes to isolate the core input, processing and output logic. Composition could then be used to instatiate a class as needed. This would make the code easier to read and maintain. However, for the purposes of this exercise, such requirements were not specifed.

**Error Handling**
In a real world scenario if you are not confident on the data being provided, error handling would also be useful. For example, we could use a `begin rescue end` block to wrap the processing logic in the script and handle errors in a more user friendly way. Or, we could check the data for required keys, and values of the correct data type, and raise a meaningful error if missing or invalid. 



**To run**
- Ensure you are in root folder `/thrive-technical`
- Run IRB in console `irb`
- Load script `load 'script.rb'`
