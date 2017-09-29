Review a spreadsheet of survey responses without causing significant harm to your eyeballs.

## Use

1. Place `data.xls` into the directory of this project.
2. Run `bundle install`.
3. Run `ruby generate.rb`
4. Open `generated.html` in your web browser.


### Assumptions

Your spreadsheet is formatted as follows:

* Row 0: Questions
* Rows 1-n: Respondant Answers


### Output and Intent

The generated HTML is organized with one section per respondent. Each respondent section displays the respondent's answers accompanied by the question asked.

This organization is intended to allow you to review each respondant's answers in their entirety, so as to understand the full picture of each respondent before moving on to the next. Ultimately, the point is to allow patterns to emerge over the full review of all respondents, by allowing the context of a given respondent to inform your understanding of each answer.