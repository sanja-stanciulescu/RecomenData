# RecomenData

The purpose of this program is to process a dataset to generate recommendations based on existing feedback. 
Reviews are structured in the form of a matrix. 
Each row of the matrix represents a client, and each column represents a theme. 
The value in the matrix is the score given by the client for that particular theme. The score is an integer between 1 and 10.

Due to the large volume of data, we want to reduce the dimensionality of the matrix by eliminating clients who contributed the least.

Cosine similarity is a measure of similarity between two non-zero vectors. It is defined as the cosine of the angle between the two vectors.

Cosine similarity is widely used in various applications, such as:

* Information retrieval: To measure similarity between documents or between a query and documents.
* Recommendation systems: To calculate similarity between users or between items (products, movies, etc.).
* Clustering: To group similar items based on their cosine similarity.
* With this measure, we can determine how similar two vectors are concerning their direction, regardless of magnitude.

The **recommendations.m** function receives the path to the .csv file, the index of the appreciated theme, the number of themes to recommend, the minimum number of reviews, and the number of singular values to keep. It returns the indices of the recommended themes.

### Function Flow:

* Loading the matrix from the .csv file: The function read_mat is implemented to load the matrix using csvread.
* Preprocessing the matrix: The matrix is preprocessed using the preprocess function.
* Calculating the reduced SVD of the matrix: Reduced SVD is calculated using the svds function.
* Matrices U, S, and V: Matrix V will contain information about themes.
* Sorting themes by similarity to the appreciated theme: Themes are sorted using the cosine_similarity.m function.
* Returning the indices of the recommended themes: The indices of the recommended themes are returned.
