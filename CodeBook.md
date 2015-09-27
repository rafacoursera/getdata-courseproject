##Process followed doing the project

First of all we read the datasets and we store them in the variables:
- variable_names: contains the dataset of the names of the varibles
- data train x
- dat train Y
- data test x
- data test y

We merge the datasets using cbind and rbind

We store in a var the index of the fields we want to save (mean and std) and we subset the dataset to obtain them.

Finally, with the dcast function of the reshape2 library, we create the final tidy dataset and we write it.