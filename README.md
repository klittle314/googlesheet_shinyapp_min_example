# googlesheet_shinyapp_min_example
Somewhat minimal example to show failure of a shiny app to load on the shinyapps.io site using googlesheets.

You need to have a Google Drive account and googlesheets package installed and a shinyapps.io account

You need to have a Google Sheet like the example here in your Google Drive:
https://docs.google.com/spreadsheets/d/1QhPtrsukBCVZJ-t-nSxCLR1J2OCX-yVReAGVYXIzexM/edit?usp=sharing


To set up and test for failure, open the app and in your console type
gs_auth()

Grant permission to googlesheets to operate on your behalf with Google Sheets and Google Drive.

Confirm that you now have a .httr-oauth in your current working directory.

Run the shiny app locally to confirm that you can run the app:  it should just copy the Google Sheet into a table.   You can select one or more rows and then download an Excel spreadsheet with the chosen rows.

Now try to publish the app to your account on shinyapps.io

I get this error:

The application failed to start.


Attaching package: ‘shinyjs’

The following object is masked from ‘package:shiny’:

    runExample

The following objects are masked from ‘package:methods’:

    removeClass, show


Attaching package: ‘shinyapps’

The following object is masked from ‘package:shiny’:

    hr


Attaching package: ‘rsconnect’

The following objects are masked from ‘package:shinyapps’:

    accountInfo, accounts, addAuthorizedUser, addLinter,
    appDependencies, applications, authorizedUsers, configureApp,
    deployApp, deployments, lint, linter, removeAccount,
    removeAuthorizedUser, restartApp, setAccountInfo, setProperty,
    showLogs, showProperties, taskLog, tasks, terminateApp,
    unsetProperty

The following object is masked from ‘package:shiny’:

    serverInfo

Loading required package: bitops

Attaching package: ‘RCurl’

The following object is masked from ‘package:shinyjs’:

    reset


Attaching package: ‘httr’

The following object is masked from ‘package:curl’:

    handle_reset


Attaching package: ‘DT’

The following objects are masked from ‘package:shiny’:

    dataTableOutput, renderDataTable

Worksheets feed constructed with public visibility
Error in value[[3L]](cond) : Expected content-type:
application/atom+xml; charset=UTF-8
Actual content-type:
text/html; charset=UTF-8
Calls: local ... tryCatch -> tryCatchList -> tryCatchOne -> <Anonymous>
Execution halted
