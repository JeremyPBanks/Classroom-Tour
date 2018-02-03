// File:	my_pthread_t.h
// Author:	Yujie REN
// Date:	09/23/2017

// name: Lance Fletcher
// username of iLab: laf224
// iLab Server: composite.cs.rutgers.edu
#ifndef MY_PTHREAD_T_H
#define MY_PTHREAD_T_H

#define _GNU_SOURCE+

/* include lib header files that you need here: */
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>

#include <ucontext.h>
#include <malloc.h>

//L: So our pthreads are just unsigned ints? I guess that means make a thread ID?
typedef uint my_pthread_t;

//L: struct to store thread attributes
typedef struct threadControlBlock
{
	my_pthread_t;
	unsigned int runTime;
	//L: Highest priority = 1
	unsigned int priority;
	ucontext_t *context;
} tcb; 

/* mutex struct definition */
typedef struct my_pthread_mutex_t
{
	//L: Indicates whether mutex is currently locked
	int lock = 0;

} my_pthread_mutex_t;

/* define your data structures here: */

// Feel free to add your own auxiliary data structures

//L: TODO: implement priority queue struct

/* Function Declarations: */

//L: functions for queue TODO: Update to heap?
int enqueue(queue*, ucontext_t*);
ucontext_t* dequeue();

/* create a new thread */
int my_pthread_create(my_pthread_t * thread, pthread_attr_t * attr, void *(*function)(void*), void * arg);

/* give CPU pocession to other user level threads voluntarily */
int my_pthread_yield();

/* terminate a thread */
void my_pthread_exit(void *value_ptr);

/* wait for thread termination */
int my_pthread_join(my_pthread_t thread, void **value_ptr);

/* initial the mutex lock */
int my_pthread_mutex_init(my_pthread_mutex_t *mutex, const pthread_mutexattr_t *mutexattr);

/* aquire the mutex lock */
int my_pthread_mutex_lock(my_pthread_mutex_t *mutex);

/* release the mutex lock */
int my_pthread_mutex_unlock(my_pthread_mutex_t *mutex);

/* destroy the mutex */
int my_pthread_mutex_destroy(my_pthread_mutex_t *mutex);

#endif
