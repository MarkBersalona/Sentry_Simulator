/*
 * FreeRTOS Kernel V10.4.3
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * https://www.FreeRTOS.org
 * https://github.com/FreeRTOS
 *
 */

/* Kernel includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
#include "semphr.h"

/* Freescale includes. */
#include "fsl_device_registers.h"
#include "fsl_debug_console.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"

#include "gconfig.h"

/*******************************************************************************
 * Definitions
 ******************************************************************************/

/* Priorities at which the tasks are created.  The event semaphore task is
given the maximum priority of ( configMAX_PRIORITIES - 1 ) to ensure it runs as
soon as the semaphore is given. */
#define MAIN_TASK_PRIORITY      (tskIDLE_PRIORITY + 2)
#define INPUT_TASK_PRIORITY     (tskIDLE_PRIORITY + 2)
#define OUTPUT_TASK_PRIORITY    (tskIDLE_PRIORITY + 2)
#define NETWORK_TASK_PRIORITY   (tskIDLE_PRIORITY + 2)

#define mainEVENT_SEMAPHORE_TASK_PRIORITY (configMAX_PRIORITIES - 1)

/* The rate at which data is sent to the queue, specified in milliseconds, and
converted to ticks using the portTICK_PERIOD_MS constant. */
#define mainQUEUE_SEND_PERIOD_MS (200 / portTICK_PERIOD_MS)

/* The period of the example software timer, specified in milliseconds, and
converted to ticks using the portTICK_PERIOD_MS constant. */
#define mainSOFTWARE_TIMER_PERIOD_MS (1000 / portTICK_PERIOD_MS)

/* The number of items the queue can hold.  This is 1 as the receive task
will remove items as they are added, meaning the send task should always find
the queue empty. */
#define mainQUEUE_LENGTH (1)

//
// FreeRTOS mutexes
//
SemaphoreHandle_t xDiagnosticMutex;

#define LOG(...) {\
  xSemaphoreTake(xDiagnosticMutex, portMAX_DELAY);\
  PRINTF(__VA_ARGS__);\
  xSemaphoreGive(xDiagnosticMutex);\
}


/*******************************************************************************
 * Prototypes
 ******************************************************************************/
void PrintStartupBanner(void);

void MainTask(void *pvParameters);
void InputTask(void *pvParameters);
void OutputTask(void *pvParameters);
void NetworkTask(void *pvParameters);

/*******************************************************************************
 * Globals
 ******************************************************************************/

/*******************************************************************************
 * Code
 ******************************************************************************/
/*!
 * @brief Main function
 */
int main(void)
{
    TimerHandle_t xExampleSoftwareTimer = NULL;

    /* Init board hardware. */
    BOARD_ConfigMPU();
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
    BOARD_InitDebugConsole();

    //PRINTF("%s: Sensaphone Sentry Simulator\r\n", __FUNCTION__);


    // Create mutexes
    xDiagnosticMutex = xSemaphoreCreateMutex();

    PrintStartupBanner();

    // Create tasks
    if (xTaskCreate(/* The function that implements the task. */
                    MainTask,
                    /* Text name for the task, just to help debugging. */
                    "Main task",
                    /* The size (in words) of the stack that should be created
                    for the task. */
                    configMINIMAL_STACK_SIZE + 166,
                    /* A parameter that can be passed into the task.  Not used
                    in this simple demo. */
                    NULL,
                    /* The priority to assign to the task.  tskIDLE_PRIORITY
                    (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1
                    is the highest priority. */
					MAIN_TASK_PRIORITY,
                    /* Used to obtain a handle to the created task.  Not used in
                    this simple demo, so set to NULL. */
                    NULL) != pdPASS)
    {
        LOG("*** ERROR *** MainTask creation failed!\r\n");
        while (1)
            ;
    }
    if (xTaskCreate(InputTask,
                    "Input task",
                    configMINIMAL_STACK_SIZE + 166,
                    NULL,
                    INPUT_TASK_PRIORITY,
                    NULL) != pdPASS)
    {
        LOG("*** ERROR *** InputTask creation failed!\r\n");
        while (1)
            ;
    }
    if (xTaskCreate(OutputTask,
                    "Output task",
                    configMINIMAL_STACK_SIZE + 166,
                    NULL,
                    OUTPUT_TASK_PRIORITY,
                    NULL) != pdPASS)
    {
        LOG("*** ERROR *** OutputTask creation failed!\r\n");
        while (1)
            ;
    }
    if (xTaskCreate(NetworkTask,
                    "Network task",
                    configMINIMAL_STACK_SIZE + 166,
                    NULL,
                    NETWORK_TASK_PRIORITY,
                    NULL) != pdPASS)
    {
        LOG("*** ERROR *** NetworkTask creation failed!\r\n");
        while (1)
            ;
    }


    /* Start the tasks and timer running. */
    vTaskStartScheduler();

    /* If all is well, the scheduler will now be running, and the following line
    will never be reached.  If the following line does execute, then there was
    insufficient FreeRTOS heap memory available for the idle and/or timer tasks
    to be created.  See the memory management section on the FreeRTOS web site
    for more details.  */
    for (;;)
        ;
}
// end main

/**
  * @brief  Print startup banner
  * @param  None
  * @retval None
  */
void PrintStartupBanner(void)
{
  xSemaphoreTake(xDiagnosticMutex, portMAX_DELAY);
  //LOG_NOW("\r\nSensaphone 400 starting...\r\n");
  //LOG_NOW("\r\nSensaphone 400 starting...\r\n");
  //LOG_NOW("\r\nSensaphone 400 starting...\r\n");
  PRINTF("\r\n\r\n\r\n");
  PRINTF("=================================<=>=================================\r\n");
  PRINTF("                    Sensaphone Sentry Simulator                      \r\n");
  PRINTF("                              v%s.%s.%s.%c \r\n", VERSION_A,VERSION_B,VERSION_C,BOARD_REVISION);
  PRINTF("                             %s   \r\n", VERSION_DATE);
  PRINTF("=================================<=>=================================\r\n");
  xSemaphoreGive(xDiagnosticMutex);
}
// end PrintStartupBanner


/*!
 * @brief Input task
 */
void InputTask(void *pvParameters)
{
	static uint16_t luiCounter = 0;

    for (;;)
    {
    	LOG("%s: Sentry says, InputTask here, been here %d times...\r\n", __FUNCTION__, ++luiCounter);
    	vTaskDelay(2000/portTICK_PERIOD_MS);
    	//osDelay(1000);
    }
}
// end InputTask

/*!
 * @brief Main task
 */
void MainTask(void *pvParameters)
{
	static uint16_t luiCounter = 0;

    for (;;)
    {
    	LOG("%s: Sentry says, Hello world! Been here %d times...\r\n", __FUNCTION__, ++luiCounter);
    	vTaskDelay(1000/portTICK_PERIOD_MS);
    	//osDelay(1000);
    }
}
// end MainTask

/*!
 * @brief Network task
 */
void NetworkTask(void *pvParameters)
{
	static uint16_t luiCounter = 0;

    for (;;)
    {
    	LOG("%s: Sentry says, NetworkTask will be late to the party, been here %d times...\r\n", __FUNCTION__, ++luiCounter);
    	vTaskDelay(5000/portTICK_PERIOD_MS);
    	//osDelay(1000);
    }
}
// end NetworkTask

/*!
 * @brief Output task
 */
void OutputTask(void *pvParameters)
{
	static uint16_t luiCounter = 0;

    for (;;)
    {
    	LOG("%s: Sentry says, OutputTask checking in! Been here %d times...\r\n", __FUNCTION__, ++luiCounter);
    	vTaskDelay(3000/portTICK_PERIOD_MS);
    	//osDelay(1000);
    }
}
// end OutputTask





//////////////////////////////////////////////////////////////////////////////////////
// FreeRTOS callback stubs
//////////////////////////////////////////////////////////////////////////////////////

/*!
 * @brief tick hook is executed every tick.
 */
void vApplicationTickHook(void)
{
    BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    static uint32_t ulCount             = 0;

    /* The RTOS tick hook function is enabled by setting configUSE_TICK_HOOK to
    1 in FreeRTOSConfig.h.

    "Give" the semaphore on every 500th tick interrupt. */
    ulCount++;
    if (ulCount >= 500UL)
    {
        /* This function is called from an interrupt context (the RTOS tick
        interrupt),    so only ISR safe API functions can be used (those that end
        in "FromISR()".

//        xHigherPriorityTaskWoken was initialised to pdFALSE, and will be set to
//        pdTRUE by xSemaphoreGiveFromISR() if giving the semaphore unblocked a
//        task that has equal or higher priority than the interrupted task. */
//        xSemaphoreGiveFromISR(xEventSemaphore, &xHigherPriorityTaskWoken);
//        ulCount = 0UL;
    }

    /* If xHigherPriorityTaskWoken is pdTRUE then a context switch should
    normally be performed before leaving the interrupt (because during the
    execution of the interrupt a task of equal or higher priority than the
    running task was unblocked).  The syntax required to context switch from
    an interrupt is port dependent, so check the documentation of the port you
    are using.

    In this case, the function is running in the context of the tick interrupt,
    which will automatically check for the higher priority task to run anyway,
    so no further action is required. */
}

/*!
 * @brief Malloc failed hook.
 */
void vApplicationMallocFailedHook(void)
{
    /* The malloc failed hook is enabled by setting
    configUSE_MALLOC_FAILED_HOOK to 1 in FreeRTOSConfig.h.

    Called if a call to pvPortMalloc() fails because there is insufficient
    free memory available in the FreeRTOS heap.  pvPortMalloc() is called
    internally by FreeRTOS API functions that create tasks, queues, software
    timers, and semaphores.  The size of the FreeRTOS heap is set by the
    configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */
	PRINTF("%s: *** ERROR *** insufficient memory available in FreeRTOS heap\r\n", __FUNCTION__);
    for (;;)
        ;
}

/*!
 * @brief Stack overflow hook.
 */
void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName)
{
    (void)pcTaskName;
    (void)xTask;

    /* Run time stack overflow checking is performed if
    configconfigCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
    function is called if a stack overflow is detected.  pxCurrentTCB can be
    inspected in the debugger if the task name passed into this function is
    corrupt. */
	PRINTF("%s: *** ERROR *** stack overflow detected\r\n", __FUNCTION__);
    for (;;)
        ;
}

/*!
 * @brief Idle hook.
 */
void vApplicationIdleHook(void)
{
    volatile size_t xFreeStackSpace;

    /* The idle task hook is enabled by setting configUSE_IDLE_HOOK to 1 in
    FreeRTOSConfig.h.

    This function is called on each cycle of the idle task.  In this case it
    does nothing useful, other than report the amount of FreeRTOS heap that
    remains unallocated. */
    xFreeStackSpace = xPortGetFreeHeapSize();

    if (xFreeStackSpace > 100)
    {
        /* By now, the kernel has allocated everything it is going to, so
        if there is a lot of heap remaining unallocated then
        the value of configTOTAL_HEAP_SIZE in FreeRTOSConfig.h can be
        reduced accordingly. */
    }
}
