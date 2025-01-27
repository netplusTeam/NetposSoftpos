.class public Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;
.super Ljava/lang/Exception;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Proposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExitElectionException"
.end annotation


# instance fields
.field final proposerStats:Lcom/sleepycat/je/utilint/StatGroup;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatGroup;)V
    .locals 0
    .param p1, "proposerStats"    # Lcom/sleepycat/je/utilint/StatGroup;

    .line 519
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Proposer$ExitElectionException;->proposerStats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 521
    return-void
.end method
