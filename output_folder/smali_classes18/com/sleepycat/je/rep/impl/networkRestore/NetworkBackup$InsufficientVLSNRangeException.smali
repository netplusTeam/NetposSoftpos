.class public Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;
.super Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;
.source "NetworkBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsufficientVLSNRangeException"
.end annotation


# instance fields
.field private final minVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V
    .locals 0
    .param p1, "minVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "rangeFirst"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "rangeLast"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p4, "activeServers"    # I

    .line 906
    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V

    .line 907
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 908
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient VLSN range. Needed VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Available range: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;->rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
