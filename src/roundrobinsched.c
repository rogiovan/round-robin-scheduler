#include <stdio.h>

static void task1( void );
static void task2( void );
static void task3( void );

static void (*tasks[])( void ) = { &task1, &task2, &task3 };

int main( int argc, char* argv[] )
{
  const size_t taskNum = sizeof( tasks )/sizeof( tasks[0] );

  for( size_t taskIdx = 0u; taskIdx < taskNum; taskIdx++ )
  {
    tasks[taskIdx]();
  }

  return 0;
}

static void task1( void )
{
  printf( "Executing task1...\n" );
}

static void task2( void )
{
  printf( "Executing task2...\n" );
}

static void task3( void )
{
  printf( "Executing task3...\n" );
}
