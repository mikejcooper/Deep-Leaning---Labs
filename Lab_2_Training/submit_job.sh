#!/bin/bash       
#SBATCH --job-name=TensorFlow                                                                                                                                   
#SBATCH -t 0-00:10 # Runtime in D-HH:MM                                                                                                              
#SBATCH -p gpu # Partition to submit to                                                                                                              
#SBATCH --gres=gpu:1                                                                                                                                 
#SBATCH --mem=15000
#SBATCH -J  testing_tensorflow    # name                                                                                                                                  
#SBATCH -o hostname_%j.out # File to which STDOUT will be written                                                                                    
#SBATCH -e hostname_%j.err # File to which STDERR will be written                                                                                    
#SBATCH --mail-type=END # Type of email notification- BEGIN,END,FAIL,ALL                                                                             
#SBATCH --mail-user=mc14641@bristol.ac.uk # Email to which notifications will be sent                                                                

module add libs/tensorflow/1.2

srun python cifar_hyperparam.py
wait
