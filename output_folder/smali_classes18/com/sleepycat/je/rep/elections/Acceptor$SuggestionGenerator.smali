.class public interface abstract Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;
.super Ljava/lang/Object;
.source "Acceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Acceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuggestionGenerator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    }
.end annotation


# virtual methods
.method public abstract get(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Protocol$Value;
.end method

.method public abstract getRanking(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;)Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
.end method
