# Fafu

## Usage
To use Fafu you need [docker](https://docs.docker.com/) installed. 
Then it is as simple as running `./run URL_OF_YOUR_WEBSITE`.
The results will be available in `final.json`.

## Tool Breakdown
This tool has 4 steps:
1. Crawl all the links for a given website root and save them
2. Run lighthouse on each one of those links
3. Concatenate the resulting JSON files into 1 big `final.json`


## Using the data

You can now use the data for your use case.
An example would be to use [litvis](https://github.com/gicentre/litvis) for generating a report.
`examples/PerformanceScore.md` shows the performance scores for the different URLs using this technique.

