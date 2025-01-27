.class public Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;
.super Ljava/lang/Exception;
.source "NetworkBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectedServerException"
.end annotation


# instance fields
.field final activeServers:I

.field final rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

.field final rangeLast:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V
    .locals 0
    .param p1, "rangeFirst"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "rangeLast"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "activeServers"    # I

    .line 876
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 877
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->rangeFirst:Lcom/sleepycat/je/utilint/VLSN;

    .line 878
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    .line 879
    iput p3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->activeServers:I

    .line 880
    return-void
.end method


# virtual methods
.method public getActiveServers()I
    .locals 1

    .line 887
    iget v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->activeServers:I

    return v0
.end method

.method public getRangeLast()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;->rangeLast:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method
