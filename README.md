# Genetic-Algorithm (EA)

In this project, Genetic Algorithm MATLAB code is provided and 3 common problems including: Knapsack, nQueen and TSP have been modeled to being optimized by Genetic algorithm.
First, a brief overview of Genetic algorithm is provided as follow: 

The genetic algorithm is a search for revelation inspired by Charles Darwin's theory of natural evolution. 
This algorithm reflects the natural selection process in which people are selected for reproduction with greater fit to form the
offspring of the next generation.

##Genetic Algorithm:

![pic1](https://github.com/HamedMoasses/Genetic-Algorithm/blob/master/1.png)

(The concept of natural selection):

The natural selection process begins with selecting the most well-off individuals from the population. 
These people create a generation that inherits the characteristics of their parents and adds these characteristics to
the next generation. If parents are better off, their offspring will be better off than their parents and have a better chance of survival.
This process continues to the end, and eventually a generation with the most people is fit.

(Initial population):

This process begins with a set of people called "Population." Each person is a solution to the problem we want to solve.
Each person is identified by a set of parameters (variables) called genes. Genes join a string to form a chromosome (solution).
In a genetic algorithm, a person's genes are represented using a string in alphabetical order.
Normally binary values are used (strings 1 and 0). We assume that genes are encoded in a chromosome.

![pic1](https://github.com/HamedMoasses/Genetic-Algorithm/blob/master/2.png)

(Fitness function):

The Fitness Function determines how well a person fits. In other words, it determines one's ability to compete with others.
This function gives each person a point of fit.
The likelihood that a person will be selected for reproduction is based on his or her fitness score.

(Selection):

The idea of the selection phase is based on selecting the most suitable people and allowing their genes to pass on to the next generation.
Pairs of individuals (parents) are selected based on their fitness scores.
People with the highest fit are more likely to choose to reproduce.

(Crossover):

Crossover is the most important phase in the genetic algorithm. For each pair of parents who have amalgamation, a point of intersection is selected at a random point within the genes.

For example, suppose the intersection point in the image below is 3.

![pic1](https://github.com/HamedMoasses/Genetic-Algorithm/blob/master/3.png)

Children are born by exchanging parental genes among themselves to the point of intersection.

![pic1](https://github.com/HamedMoasses/Genetic-Algorithm/blob/master/4.png)

New children are added to the population.

![pic1](https://github.com/HamedMoasses/Genetic-Algorithm/blob/master/5.png)

(Mutation):

In the new generation that is being formed, some of their genes may be mutated with a low probability of accident. 
This means that some bits in the string can be reversed.

![pic1](https://github.com/HamedMoasses/Genetic-Algorithm/blob/master/6.png)

Mutations are necessary to maintain diversity within the population and prevent premature convergence.

(End):

The genetic algorithm ends if the population becomes convergent, that is, produces a generation that is not very different from its 
predecessor. In this case, it is said that the genetic algorithm has provided a set of solutions to our problem.

(Description):

The population is stable. When a new generation is formed, people with the least fit die and space is created for the new generation.
The sequence of phases is repeated until there are people in each new generation who are better than the previous generation.



