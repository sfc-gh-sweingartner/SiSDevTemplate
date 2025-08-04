
## How to adjust and run this example requirements document
When you are done, then share this into the context of the AI Agent.  
Also share any sample code or documentation that you want Cursor to copy paste solutions out of
Then run this AI Agent command:  
"/Generate Curor Rules generate some rules using the requirements.md document I've provided
That will generate several rules file.  
When you are done, we will delete this requirements.md document and only alter the rules files going forward"

After this is done, accept all the files, mark all of them to be  "Always" included, review and edit each one as required.  Then delete your requiremenmt.md doc

## Cursor should ignore all the lines above when generating rules files.  

## Cursor behaviour
1. If I issue you a challenging task where there are several options or confusion in my request, then ask me questions and / or give me options before proceeding with any code changes
2. While we are starting a task, I will enjoy your creativity.  However, as we progress through a task in debugging and testing I do not want creativity.  I want minimal changes to fix problems.  
3. If I ask you to do something that is is in conflict with any of the rules files, then make the related change to the rules files so that I can review the change

## high level design
Tis is a streamlit in snowflake app designed for network engineers to monitor telco network data and review and act on anomolies 

It has a landing page and a few pages the user can navigate to.  

## Architecture and Tech requirements:
This is built for Streamlit in Snowflake and can also be run locally on a laptop for development and testing.  

Limit python libraries to using those available on this anaconda channel:  
https://repo.anaconda.com/pkgs/snowflake/

The app will have access to a Snowflake database but default the app will not have access to external data.  When needed, you can assist the developer to set up external network connections, API keys, etc... to connect to external information


## Detailed design
1. The landing page has KPI's and easy navigation to... etc...  
2. The monitoring page has a map...  
3. The documentation page has information on how to use the app

## Project Tasks - update for each major release
Your task as part of this project is to:
1. Create an additional page that...
2. Generate the related data model and sample data to enable me to test. etc...

## Documentation
1. You will create end user documentation so they know how to use the app.  This should appear in a single page within the app
2. Code should have a lot of comments to make it easy for humans to understand
3. The rules documents will act as the functional and technical designs and you will update these accordingly as we progress with the design and development of the app 

## Test Plan
1. Maintain a test plan according to what is designed and developed 

## Optional: Version Control Guidelines
Git branching strategy
Include guidelines for commit messages
Specify which files should be in .gitignore

1. I will do all of the testing in Streamlit in Snowflake rather than locally.  
2. You are authorised to write every update to my git repository at
[Enter the git repository URL here]
3. I will pull those changes from GIT into my Snowflake app and test there
4. If anything gets out of line, I understand Cursor cannot force push so I may choose to manually force push via running: 
    git add .  #either run this to add all files or
    git add pages/1_Cortex_Analyst.py utils/chart_utils.py #or run this line to only add particular files
    git commit -m "Sync local project state" 
    git push --force origin main # or replace main with the branch_name if forked

## Optional: Security Requirements:
Add guidelines for handling sensitive data
Specify authentication requirements
Include guidelines for API key management

## Optional: Documentation Requirements:
Add requirements for code documentation
Specify requirements for user documentation
Include API documentation guidelines if applicable


## Cursor / Software Development Guidelines
1. If documents or a request is unclear, please ask questions ebfore coding
2. Do not let SQL scripts try to refrence other SQL scripts.  They should be joined into one script or run stand alone
3. When coding in python, only use libraries listed on https://repo.anaconda.com/pkgs/snowflake/
4. You are authorised to create, update and delete files in the git repository
5. You will regularly update the design documents and rules so that they stay inline with any decisions that we make
6. I would like to avoid having many files in this project that are not used so want cleanup to occur during development.  Ideally you modify files rather than create new files.  If you create new files to replace an old one that is no longer needed, then either delete the old file or move it to a trash folder.  
7. All data will be kept in Snowflake
8. Use python version 3.11 unless I authorise an exception
9. You can run SQL statements against my snowflake environment using snowsql. The connection uses keypair authentication with the passphrase stored in the snowsql config file at ~/.snowsql/config. To run snowsql, you run:
export SNOWSQL_PRIVATE_KEY_PASSPHRASE="[insert in the passphrase from the config file]"
snowsql -d [DB Name] -s [Schema Name] -f "/path/to/script.sql"
Note: The SNOWSQL_PRIVATE_KEY_PASSPHRASE environment variable is required because snowsql reads the passphrase from this specific environment variable, not from the config file's private_key_passphrase setting.