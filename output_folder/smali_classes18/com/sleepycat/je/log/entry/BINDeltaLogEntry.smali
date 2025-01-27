.class public Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;
.super Lcom/sleepycat/je/log/entry/INLogEntry;
.source "BINDeltaLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/log/entry/INLogEntry<",
        "Lcom/sleepycat/je/tree/BIN;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/tree/BIN;)V
    .locals 1
    .param p1, "bin"    # Lcom/sleepycat/je/tree/BIN;

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Lcom/sleepycat/je/tree/IN;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/sleepycat/je/tree/BIN;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/sleepycat/je/tree/BIN;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Ljava/lang/Class;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;JJLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/IN;)V
    .locals 0
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "lastFullLsn"    # J
    .param p4, "lastDeltaLsn"    # J
    .param p6, "logEntryType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p7, "parent"    # Lcom/sleepycat/je/tree/IN;

    .line 49
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/log/entry/INLogEntry;-><init>(Ljava/nio/ByteBuffer;JJLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/IN;)V

    .line 50
    return-void
.end method


# virtual methods
.method public isBINDelta()Z
    .locals 1

    .line 57
    const/4 v0, 0x1

    return v0
.end method
