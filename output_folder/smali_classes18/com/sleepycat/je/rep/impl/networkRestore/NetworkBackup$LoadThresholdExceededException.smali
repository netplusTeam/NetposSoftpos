.class public Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;
.super Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;
.source "NetworkBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadThresholdExceededException"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 918
    const-class v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;

    return-void
.end method

.method constructor <init>(ILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V
    .locals 1
    .param p1, "threshold"    # I
    .param p2, "rangeFirst"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "rangeLast"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "activeServers"    # I

    .line 928
    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V

    .line 929
    if-le p4, p1, :cond_0

    .line 930
    iput p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;->threshold:I

    .line 931
    return-void

    .line 929
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Active server threshold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;->threshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exceeded. Active servers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;->activeServers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
