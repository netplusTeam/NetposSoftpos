.class abstract Lcom/sleepycat/je/log/entry/BaseReplicableEntry;
.super Lcom/sleepycat/je/log/entry/BaseEntry;
.source "BaseReplicableEntry.java"

# interfaces
.implements Lcom/sleepycat/je/log/entry/ReplicableLogEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
        ">",
        "Lcom/sleepycat/je/log/entry/BaseEntry<",
        "TT;>;",
        "Lcom/sleepycat/je/log/entry/ReplicableLogEntry;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseReplicableEntry;, "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<TT;>;"
    invoke-direct {p0}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>()V

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseReplicableEntry;, "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<TT;>;"
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/entry/BaseEntry;-><init>(Ljava/lang/Class;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .line 60
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseReplicableEntry;, "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<TT;>;"
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->getSize(IZ)I

    move-result v0

    return v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 65
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseReplicableEntry;, "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 72
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseReplicableEntry;, "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public writeEntry(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "destBuffer"    # Ljava/nio/ByteBuffer;

    .line 54
    .local p0, "this":Lcom/sleepycat/je/log/entry/BaseReplicableEntry;, "Lcom/sleepycat/je/log/entry/BaseReplicableEntry<TT;>;"
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/log/entry/BaseReplicableEntry;->writeEntry(Ljava/nio/ByteBuffer;IZ)V

    .line 56
    return-void
.end method
