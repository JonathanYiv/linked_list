# Linked List Project

This is my version of implementing the data structure [linked lists](https://en.wikipedia.org/wiki/Linked_list) in ruby.

This is a project from [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists).

![Linked List Image](/ll.png)

## Installation

Open your Terminal/Command Line. Navigate to the directory where your version will live. Type in the following:

```
$ git clone https://github.com/JonathanYiv/linked_list.git
$ cd linked_list
$ ruby linkedlist.rb
```

### Available Methods

```
#append(data) appends the data to the end of the list
#prepend(data) prepends the data to the start of the list
#size returns the total number of nodes in the list
#head returns the first node in the list
#tail returns the last node in the list
#at(index) returns the node at the given index
#pop removes the last node from the list
#contains?(data) returns true if the value is in the list
#find(data) returns the index of the data
#to_s represents the linked list as a string
#insert_at(index) lets you insert data at a given index
#remove_at(index) lets you remove the node at a given index
```

## Pre-Project Thoughts

Odin has been having me go through various types of data structures and algorithms. 
I find them really fascinating and definitely have a gap of knowledge regarding them.
Implementing Linked Lists will be beneficial for me to understand how a data structure is built.

## Post-Project Thoughts

This was definitely one of the more fun projects. In hindsight, there was a lot of redundancy in traversing the linked list. Later on, I may refactor with a #traverse method that accepts a condition block. 