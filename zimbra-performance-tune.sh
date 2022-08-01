#!/bin/bash
zmlocalconfig -e mailboxd_java_heap_size=1024
zmlocalconfig -e mailboxd_java_heap_new_size_percent=15
zmlocalconfig -e mysql_memory_percent=15
zmprov ms `zmhostname` zimbraAmavisMaxServers 1
zmprov ms `zmhostname` zimbraClamAVMaxThreads 1
zmprov ms `zmhostname` zimbraLmtpNumThreads 4
zmprov ms `zmhostname` zimbraHttpNumThreads 30
zmprov ms `zmhostname` zimbraPop3ServerEnabled FALSE
zmprov ms `zmhostname` zimbraImapNumThreads 20
zmprov ms `zmhostname` zimbraImapMaxConnections 200
zmprov ms `zmhostname` zimbraMessageCacheSize 2000
zmlocalconfig -e zmconfigd_interval=3600
zmprov mcf zimbraLogRawLifetime 7d
zmprov mcf zimbraLogSummaryLifetime 30d
