poc_berks_environment
=====================

Proof of Concept Berkshelf Environment


### Jobs

- upload roles from the roles directory
- upload data_bags from the data_bags directory
- create environments for berksfiles if the do not exist
- apply berksfiles to the appropriate environments


### Workflow

#### Getting your changes into the EC

- Perform a 'berks install' locally or on the EC to generate a new Berksfile.lock locally. 
- Commit these changes to a branch and issue a pull request to master.
- When the branch is merged down to master the changes will be applied to the EC

#### Promiting your changes through environments

- Copy the Berksfile.lock from the source environment to the destination environment
- Commit your changes to a branch and issue a pull request.
- When the branch is merged down to master the changes will be applied to the EC
