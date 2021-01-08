<!-- PROJECT LOGO -->
<p align="center">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Determining a Good or Bad Radar</h3>

  <p align="center">
    First of all, what is "good"? :innocent:
    <br />
    <a href="https://github.com/Mathurkarishma/radar-signals-ionosphere"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/Mathurkarishma/radar-signals-ionosphere/issues">Report Bug</a>
    ·
    <a href="https://github.com/Mathurkarishma/radar-signals-ionosphere/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#conclusion">Conclusion</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

We will be speaking into a dataset regarding radar data and whether the radar returns show evidence of some type of structure in the ionosphere.  If signals pass through it or not is how it will be deemed as either “good” or “bad.”  While the dataset gives us the labels, we want to use cluster analysis to determine which characteristics might lead to a “good” radar.  Clustering is not meant for prediction, but just to find similarities and relationships.  

Here is a [link](https://archive.ics.uci.edu/ml/datasets/ionosphere) to the Ionosphere dataset information.

### Built With

* [R](https://cran.r-project.org/)
* [RStudio](https://rstudio.com/)


<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running, download the `Kmeans_clustering.R` and the text input file, `ionosphere.csv`. Then run the code in an IDE software, such as RStudio.  Set the working directory to the location of the CSV file.

<!-- USAGE EXAMPLES -->
## Usage

The code guides you through the following:

1. Importing the CSV file
2. Visualizing the formatting of the variables (datatypes, number of rows/columns, measures of central tendancy, statistical descriptions, etc.)
3. Pre-processing such as cleanup (removing irrelevant variables, check for missing variables), importing libraries, and normalization (scaling the variables)
4. Set the seed to allow for reproducability and split the dataset into a training set and test set
5. Perform the K-means clustering algorithm
6. Evaluate the accuracy through cross-tabulation and visually plotting clusters
7. Change parameters to improve accuracy (our goal is to minimize the sum of squared distances within the cluster while maximizing the sum of squared distances between clusters)

<!-- CONCLUSION -->
## Conclusion

The main findings in relation to the stated objective were that each of the instances of radars in the ionosphere dataset can be clustered into three groups.  Each group contains similar characteristics that can be used to deem a good or bad radar through evaluation of the antennas used in each instance.  There is some overlap in characteristics between some groups, called fuzzy partitioning, but this may also add into the knowledge that can be gained about the data.  Further analysis will need to be done to achieve the true objective, as the cluster analysis is purely used for exploratory analysis and relationships.

<!-- CONTACT -->
## Contact

Karishma Mathur - karishma324@gmail.com

Project Link: [https://github.com/Mathurkarishma/radar-signals-ionosphere](https://github.com/Mathurkarishma/radar-signals-ionosphere)


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* Dr. Firdu Bati at [University of Maryland, Global Campus](https://www.umgc.edu/) - Fall 2019 </br >
* [Ionosphere Dataset Description](https://archive.ics.uci.edu/ml/datasets/ionosphere)
