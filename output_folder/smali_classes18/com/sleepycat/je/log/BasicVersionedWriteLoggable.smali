.class public abstract Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;
.super Ljava/lang/Object;
.source "BasicVersionedWriteLoggable.java"

# interfaces
.implements Lcom/sleepycat/je/log/VersionedWriteLoggable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public getLogSize()I
    .locals 2

    .line 40
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;->getLogSize(IZ)I

    move-result v0

    return v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 45
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/log/BasicVersionedWriteLoggable;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 47
    return-void
.end method
