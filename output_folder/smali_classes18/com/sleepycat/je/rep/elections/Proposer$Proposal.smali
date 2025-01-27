.class public interface abstract Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
.super Ljava/lang/Object;
.source "Proposer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Proposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Proposal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/rep/elections/Proposer$Proposal;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract wireFormat()Ljava/lang/String;
.end method
