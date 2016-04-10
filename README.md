# houston-city-council-transcripts
I am curious about word frequencies and combinations used by candidates when they are running for office.

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

Currently, we have data for:

- CM Stardig (District A)
- CM Davis (District B)
- CM Cohen (District C)

Future plans include:

- Adding all council districts (letter & at large)
- Look at word frequency based on issue, issue/candidate