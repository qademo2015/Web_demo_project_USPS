# Web automation demo project

## Common
* This Web automation demo project has been developed for demo purposes using 'Cucumber', 'Selenium WebDriver' and Ruby;
* As an example it utilizes some basic functionality of USPS site;
* Default test environment to run against - 'qa' (another supported environments - 'dev', 'staging', 'production');
* Default browser - Chrome (another supported browsers - Firefox, Safari);
 
## Prerequisites
To download demo project you need to have 'git' tool installed and configured on your local machine;
To run demo project using all supported browsers you need to have all of them installed on your local machine;

## Instructions to download and run
In order to download demo project and run tests locally you need to perform following steps (using Terminal):
* Navigate to desired destination folder on your local machine (e.g. /<your_user_name>/Desktop):
```sh
cd Desktop/     
```
* Clone demo project from remote Github repository:
```sh
git clone https://github.com/alexsmirnov765/Web_demo_project_USPS.git     
```
* Navigate into demo project folder:
```sh
cd Web_demo_project_USPS/      
```
Run tests with default/non-default settings:
* Run all tests (test scenarios) with default settings:
```sh
cucumber      
```
* Run all tests (test scenarios) from particular *.feature file by tag:
```sh
cucumber --tags @zip_code_tests      
```
* Run one particular test scenario by tag:
```sh
cucumber --tags @zip_code_search      
```
* Run one particular test scenario by tag with non-default settings:
```sh
cucumber TEST_ENV=staging TEST_BROWSER=firefox --tags @zip_code_search      
```
* Run one particular test scenario by tag with creating report file in *.html format:
```sh
cucumber --tags @zip_code_search --format html --out report.html --format pretty      
```

More information of how to run Cucumber scenarios by tags you can find at [https://github.com/cucumber/cucumber/wiki/Tags]