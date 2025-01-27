.class public Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;
.super Ljava/lang/Object;
.source "BinaryProtocolStatDefinition.java"


# static fields
.field public static final BYTES_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BYTES_READ_RATE_DESC:Ljava/lang/String; = "Bytes read throughput."

.field public static final BYTES_READ_RATE_NAME:Ljava/lang/String; = "bytesReadPerSecond"

.field public static final BYTES_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final BYTES_WRITE_RATE_DESC:Ljava/lang/String; = "Bytes written throughput."

.field public static final BYTES_WRITE_RATE_NAME:Ljava/lang/String; = "bytesWrittenPerSecond"

.field public static final GROUP_DESC:Ljava/lang/String; = "Network traffic due to the replication stream."

.field public static final GROUP_NAME:Ljava/lang/String; = "BinaryProtocol"

.field public static final MESSAGE_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MESSAGE_READ_RATE_DESC:Ljava/lang/String; = "Incoming message throughput."

.field public static final MESSAGE_READ_RATE_NAME:Ljava/lang/String; = "messagesReadPerSecond"

.field public static final MESSAGE_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MESSAGE_WRITE_RATE_DESC:Ljava/lang/String; = "Outgoing message throughput."

.field public static final MESSAGE_WRITE_RATE_NAME:Ljava/lang/String; = "messagesWrittenPerSecond"

.field public static final N_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_ACK_MESSAGES_DESC:Ljava/lang/String; = "Count of all singleton ACK messages."

.field public static final N_ACK_MESSAGES_NAME:Ljava/lang/String; = "nAckMessages"

.field public static final N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_BYTES_READ_DESC:Ljava/lang/String; = "The number of bytes of Replication Stream read over the network. It does not include the TCP/IP overhead."

.field public static final N_BYTES_READ_NAME:Ljava/lang/String; = "nBytesRead"

.field public static final N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_BYTES_WRITTEN_DESC:Ljava/lang/String; = "The number of Replication Stream bytes written over the network."

.field public static final N_BYTES_WRITTEN_NAME:Ljava/lang/String; = "nBytesWritten"

.field public static final N_ENTRIES_WRITTEN_OLD_VERSION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_ENTRIES_WRITTEN_OLD_VERSION_DESC:Ljava/lang/String; = "The number of messages containing log entries that were written to the replication stream using the previous log format, to support replication to a replica running an earlier version during an upgrade."

.field public static final N_ENTRIES_WRITTEN_OLD_VERSION_NAME:Ljava/lang/String; = "nEntriesOldVersion"

.field public static final N_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_GROUPED_ACKS_DESC:Ljava/lang/String; = "Sum of all acks sent via group ACK messages."

.field public static final N_GROUPED_ACKS_NAME:Ljava/lang/String; = "nGroupedAcks"

.field public static final N_GROUP_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_GROUP_ACK_MESSAGES_DESC:Ljava/lang/String; = "Count of all group ACK messages."

.field public static final N_GROUP_ACK_MESSAGES_NAME:Ljava/lang/String; = "nGroupAckMessages"

.field public static final N_MAX_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MAX_GROUPED_ACKS_DESC:Ljava/lang/String; = "Max number of acks sent via a single group ACK message."

.field public static final N_MAX_GROUPED_ACKS_NAME:Ljava/lang/String; = "nMaxGroupedAcks"

.field public static final N_MESSAGES_BATCHED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MESSAGES_BATCHED_DESC:Ljava/lang/String; = "The number of Replication Stream messages that were batched into larger network level writes instead of being written individually (a subset of N_MESSAGES_WRITTEN.)"

.field public static final N_MESSAGES_BATCHED_NAME:Ljava/lang/String; = "nMessagesBatched"

.field public static final N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MESSAGES_READ_DESC:Ljava/lang/String; = "The number of Replication Stream messages read over the network."

.field public static final N_MESSAGES_READ_NAME:Ljava/lang/String; = "nMessagesRead"

.field public static final N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MESSAGES_WRITTEN_DESC:Ljava/lang/String; = "The total number of Replication Stream messages written over the network."

.field public static final N_MESSAGES_WRITTEN_NAME:Ljava/lang/String; = "nMessagesWritten"

.field public static final N_MESSAGE_BATCHES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MESSAGE_BATCHES_DESC:Ljava/lang/String; = "The number of message batches written."

.field public static final N_MESSAGE_BATCHES_NAME:Ljava/lang/String; = "nMessageBatches"

.field public static final N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_READ_NANOS_DESC:Ljava/lang/String; = "The number of nanoseconds spent reading from the network channel."

.field public static final N_READ_NANOS_NAME:Ljava/lang/String; = "nReadNanos"

.field public static final N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_WRITE_NANOS_DESC:Ljava/lang/String; = "The number of nanoseconds spent writing to the network channel."

.field public static final N_WRITE_NANOS_NAME:Ljava/lang/String; = "nWriteNanos"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nReadNanos"

    const-string v2, "The number of nanoseconds spent reading from the network channel."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_READ_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 40
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWriteNanos"

    const-string v2, "The number of nanoseconds spent writing to the network channel."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_WRITE_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBytesRead"

    const-string v2, "The number of bytes of Replication Stream read over the network. It does not include the TCP/IP overhead."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 59
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMessagesRead"

    const-string v2, "The number of Replication Stream messages read over the network."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 68
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBytesWritten"

    const-string v2, "The number of Replication Stream bytes written over the network."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 78
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMessagesWritten"

    const-string v2, "The total number of Replication Stream messages written over the network."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_WRITTEN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 89
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMessagesBatched"

    const-string v2, "The number of Replication Stream messages that were batched into larger network level writes instead of being written individually (a subset of N_MESSAGES_WRITTEN.)"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_BATCHED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 98
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMessageBatches"

    const-string v2, "The number of message batches written."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGE_BATCHES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 107
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "messagesReadPerSecond"

    const-string v2, "Incoming message throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 116
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "messagesWrittenPerSecond"

    const-string v2, "Outgoing message throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->MESSAGE_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 125
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "bytesReadPerSecond"

    const-string v2, "Bytes read throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_READ_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 134
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "bytesWrittenPerSecond"

    const-string v2, "Bytes written throughput."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->BYTES_WRITE_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 143
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nAckMessages"

    const-string v2, "Count of all singleton ACK messages."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 152
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupAckMessages"

    const-string v2, "Count of all group ACK messages."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_GROUP_ACK_MESSAGES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 161
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMaxGroupedAcks"

    const-string v2, "Max number of acks sent via a single group ACK message."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MAX_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 170
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupedAcks"

    const-string v2, "Sum of all acks sent via group ACK messages."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_GROUPED_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 182
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nEntriesOldVersion"

    const-string v2, "The number of messages containing log entries that were written to the replication stream using the previous log format, to support replication to a replica running an earlier version during an upgrade."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_ENTRIES_WRITTEN_OLD_VERSION:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
