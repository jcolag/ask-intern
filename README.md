# Ask INTERN

**Ask INTERN** is the "official" client application for the [**Internal Network Topic-Exploring Researcher for Notes**](https://github.com/jcolag/intern), also known as **INTERN**.

If you already happen to run **INTERN**, you can use **Ask INTERN** to handle certain kinds of requests.

|Request |Example|Result|
|--------|-------|------|
|Search  |`ask the search string`|A prioritized list of files containing stems of the search terms|
|Date    |`ask @on 2021-10-28`|A list of files modified on the specified date|
|Days Ago|`ask @ago 4`|A list of files modified four days ago|

On the technical side, **Ask INTERN** is mainly just a [Haskell](https://www.haskell.org/) console application that takes the command-line arguments and sends them to TCP port 48813 on the local computer, then prints the response.

