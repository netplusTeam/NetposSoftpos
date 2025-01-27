.class public interface abstract Lcom/sleepycat/je/rep/elections/Proposer$RetryPredicate;
.super Ljava/lang/Object;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Proposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RetryPredicate"
.end annotation


# virtual methods
.method public abstract electionRoundConcluded()Z
.end method

.method public abstract retries()I
.end method

.method public abstract retry()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
