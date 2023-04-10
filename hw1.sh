# Task 3: Create a new folder in Hadoop (not in the local filesystem):
hdfs dfs -mkdir hw1

# Task 4: Move one file that you have just uploaded to Wolf to the new folder in Hadoop:
# Move hw1_file1.txt to the hw1 folder in Hadoop
hadoop fs -put hw1_file1.txt hw1/ 

# Task5: Rename this file in Hadoop:
# Rename hw1_file1.txt to hw1_file1_Newname.txt in Hadoop
hdfs dfs -mv hw1/hw1_file1.txt hw1/hw1_file1_Newname.txt

# Task6: Copy this file from Hadoop to the local filesystem
hdfs dfs -copyToLocal hw1/hw1_file1_Newname.txt hw1_file1_Newname.txt

# Task7: Create a second folder in Hadoop. Copy two small text files to it. 
# Then extract from Hadoop a single file that is going to be the concatenation of the two files, 
# i.e., appending one file to the other one. (use getmerge)
hdfs dfs -mkdir hw1_second
hadoop fs -put hw1_file2.txt hw1_second/
hadoop fs -put hw1_file3.txt hw1_second/
hdfs dfs -getmerge hw1_second/ merged_hw1_files.txt

# Task 8: Take a different file on your local filesystem, move it to Hadoop, 
# and then within Hadoop copy the same file to Tucker’s folder (/user/tlewis).
# Copy hw1_task8_by_Xingyu.txt to Hadoop
hadoop fs -put hw1_task8_by_Xingyu.txt hw1/
# Within Hadoop copy the file to Tucker's folder
hadoop fs -cp hw1/hw1_task8_by_Xingyu.txt ../tlewis


