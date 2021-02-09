![](https://img.shields.io/badge/Microverse-blueviolet)

# Capstone Project: Ruby

> This is a capstone project for the Ruby section of the Technical Skills Curriculum.

A capstone project is the closing project that students will solo-perform. Its goal is to assess the student's technical and professional skills from the course that it is closing. For This project, I builded a web scraper that searches for remote web developing jobs a list of the results, detailing their title, company name, location, link and salary.

## Built With

- Ruby

## Getting Started

-To have access to this project, it is recommended that you clone it on your local machine, using the following the guideline:

1. Go to the [repository](https://github.com/franklinben23/Ruby-web-scraper/tree/develop), especifically the develop branch. Click the link! it will take you there ;).
2. You can clone the project by clicking on the green button at the top menu labeled "Code", then clicking the paper holder sign to copy it.
3. open a folder in your text editor of choice, open the terminal and type: git clone _paste the copied repo link_
4. make sure you are in the new repository the folder, if not navigate into it.
5. congrats!! you are ready to go.

## Usage

Now that you have a copy of the app locally the usage is pretty straightforward:

1. open the terminal and type bundle install, this will install the [RubyGems](https://guides.rubygems.org/what-is-a-gem/) that the scraper require to work.
2. to run the program, type in the terminal: ruby ./bin/main.rb
3. it will then display the supported professions, you should only select one of the list.
4. when you select the profession the program will take a few seconds run, remember it is waiting for an internet search result.
5. The output that it will return is an array of the resulting jobs, with each job being an object and containing the job's info: title, company, location, link and salary(bear in mind not all jobs show the salary publicly, so only the ones that do will display)

## Author

👤 **Franklin Benjamin Crisostomo De La Rosa**

- GitHub: [@franklinben23](https://github.com/franklinben23)
- Twitter: [@frankli2303](https://twitter.com/frankli2303)
- Email: franklinbenjamin032@gmail.com

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/franklinben23/Ruby-web-scraper/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](LICENSE) licensed.
