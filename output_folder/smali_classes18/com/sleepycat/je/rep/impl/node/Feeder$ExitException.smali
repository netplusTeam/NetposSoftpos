.class public Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
.super Ljava/lang/Exception;
.source "Feeder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Feeder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExitException"
.end annotation


# instance fields
.field final failReplica:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 1617
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->failReplica:Z

    .line 1619
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "failReplica"    # Z

    .line 1623
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 1624
    iput-boolean p2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->failReplica:Z

    .line 1625
    return-void
.end method


# virtual methods
.method public failReplica()Z
    .locals 1

    .line 1628
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->failReplica:Z

    return v0
.end method
