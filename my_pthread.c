// File:	my_pthread.c
// Author:	Yujie REN
// Date:	09/23/2017

// name: Lance Fletcher
// username of iLab: laf224
// iLab Server: composite.cs.rutgers.edu

#include "my_pthread_t.h"

#define STACK_S 4096 //4kB stack frames

//L: Signal handler to reschudle upon INTERRUPT signal
void signal_handler(int signum)
{
	if(signum != SIGALRM)
	{
		//L: Should we even handle other signals?
		exit(signum);
	}

	//TODO: Update heaps and reset alarm timer	
}

//L: TODO: heap functions

/* create a new thread */
int my_pthread_create(my_pthread_t * thread, pthread_attr_t * attr, void *(*function)(void*), void * arg)
{
	//L: TODO: *thread = [new thread ID] maybe?
	
	//L: Create a thread context to add to scheduler
	ucontext_t* task = (ucontext_t*)malloc(sizeof(ucontext_t));
	getcontext(task);
	task->uc_link = NULL;
	task->uc_stack.ss_sp = malloc(STACK_S);
	task->uc_stack.ss_size = STACK_S;
	task->uc_stack.ss_flags = 0;
	makecontext(&task, (void*)&function, 1, arg);
	//L: TODO: add this shit to the tcb

	return 0;
};

/* give CPU pocession to other user level threads voluntarily */
int my_pthread_yield()
{

	//L: swapcontext()
	return 0;
};

/* terminate a thread */
void my_pthread_exit(void *value_ptr)
{
	//L: free context stack, remove context from tcb, free control block
	raise(SIGALRM);
};

/* wait for thread termination */
int my_pthread_join(my_pthread_t thread, void **value_ptr)
{
	return 0;
};

/* initial the mutex lock */
int my_pthread_mutex_init(my_pthread_mutex_t *mutex, const pthread_mutexattr_t *mutexattr)
{
	//
	return 0;
};

/* aquire the mutex lock */
int my_pthread_mutex_lock(my_pthread_mutex_t *mutex)
{
	return 0;
};

/* release the mutex lock */
int my_pthread_mutex_unlock(my_pthread_mutex_t *mutex) {
	return 0;
};

/* destroy the mutex */
int my_pthread_mutex_destroy(my_pthread_mutex_t *mutex)
{
	return 0;
};

