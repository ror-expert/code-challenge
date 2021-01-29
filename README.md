# Code Challenge

Welcome to the Main Street code challenge. This repository includes a very basic Rails app used for assessment and testing purposes only.

## Context

[Our website](https://www.getmainstreet.com/) provides a reasonable overview of the Main Street Pitch.

Main Street is a platform that helps entrepreneurs start and run their companies in the service industry. For now it's Painting, but in the future we hope to address many other services such as Lawncare, Pest Control, Plumbing, Electrical etc.

This bare-bones app represents a small piece of Main Street's core platform. Included is a scaffold for one model, `Company`. The spirit of this code-challenge is to extend this app's functionality in interesting ways.

If you navigate to `/companies`, you'll see a list of companies generated from running `bin/setup`. You can think of this as a sort of "admin" view. As an admin, you are able to view, create, and edit companies. There would be different roles in a production version of this app. For example, a `Company` might belong to an `Owner`.

## Getting Started

```bash
# For your convience, we have a setup script
bin/setup

# Start your Rails server
rails server

# In a separate tab
bin/webpack-dev-server
```

## Tasks

### 1. Display an Association

Come up with an association for the `Company` model. For example, companies often have many _customers_.

Once you have decided on your association, display this data in an interesting way.

**Categories: data modeling, Rails best practices**

### 2. JavaScript Interactivity

Aside from the Turbolinks magic, the current app has very little JavaScript added to it. On the `Company#show` page, the user is able to copy and paste the phone number in the "Contact" section. Use JavaScript to add more interactivity to the page. Fulfilling this requirement might overlap with the UI added from the first task.

**Categories: JavaScript**

### 3. Create an Issue

Create a new markdown file at the root of this directory named `ISSUE.md`. Write up an issue as if you were a technical lead and needed to delegate a piece of work to another engineer on your team.

The issue itself can be anything you want. Maybe you want to extend this app in a certain way by adding a third party library; maybe you want to write up a ticket for replacing MiniTest with RSpec. Be clear and provide as much context as you normally would.

**Categories: Communication**

## Tips

- Submit your PR as you would in a professional environment
- Keep your commit history and your diffs clean
- Write tests where it makes sense

## How do I submit a Pull Request?

Since this a public repository, submitting a Pull Request will not be the same as when you're a collaborator. The instructions below will help you push the changes to the repo.

- Fork the project to your personal Github.
- Clone the challenge to your local from your new forked repo in your personal git account.

  ```
    git clone <forked account — main street coding challenge https url>

    example: git clone https://github.com/Sushanthbc/code-challenge.git
  ```

- Any changes made in the original repository should not be synced to your forked repository. The following commands enable us to track the original repository as a remote of the fork.

   ```
     git remote add --track master upstream https://github.com/main-street/code-challenge.git
     git fetch upstream
   ```

- Create a new branch for your changes.

   ```
    git checkout -b <your-branch-name> upstream/master
   ```

- Make your changes, stage, and commit files necessary.
- Push the changes to remote.

  ```
   git push -u origin <your-branch-name> origin
  ```

- You can now go to Github, and submit a PR with necessary details.
- Happy Coding! Please don't hesitate to shoot an email to the recruitment team if you have any issues while pushing the code.
