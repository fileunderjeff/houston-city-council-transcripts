# houston-city-council-transcripts
This is a text mining project for transcripts of candidate interviews. I am curious about word frequencies and combinations used by candidates when they are running for office.

The League of Women Voters Houston (http://lwvhouston.org) conducts interviews with candidates for Houston City Council. Generally, they ask candidates the same questions.

These interviews air on public access in the Houston area, and they are archived on Youtube by Houston Media Source (https://www.youtube.com/user/HouMediaSource).

This dataset-in-progress uses YouTube's automatic transcription feature. From there, the data is preprocessed to:

- Remove mm:ss annotation (Google Sheets)
- Remove line breaks (Sublime)
- Remove words spoken by anyone other than the candidate (Sublime)
- Convert all words to lowercase (R)
- Remove extra spaces (R)
- Remove punctuation (R)
- Remove common English words (R)
- Order the data into a matrix (R)
- Sort the matrix based on word frequency (R)

Currently, we've accumulated data for:

- CM Stardig (District A)
- CM Davis (District B)
- CM Cohen (District C)
- CM Cisneros (District H)
- CM Travis

Future plans include:

- Adding all council districts (letter & at large)
- Look at word frequency based on issue, issue/candidate

You can view and comment on the completed word frequency matricies here: https://docs.google.com/spreadsheets/d/1GysPef6KByUq9cVmaYZGDM82GZ9MCFvQvCHtfQMQOE4