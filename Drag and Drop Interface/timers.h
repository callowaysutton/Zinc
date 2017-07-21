extern int32 ontimerthread_lock;
void stop_timers() {
  ontimerthread_lock = 1;
  while (ontimerthread_lock != 2);
}

void start_timers() {
  ontimerthread_lock = 0;
}
