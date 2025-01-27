.class public interface abstract Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;
.super Ljava/lang/Object;
.source "SortedLSNTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TreeNodeProcessor"
.end annotation


# virtual methods
.method public abstract noteMemoryExceeded()V
.end method

.method public abstract processDirtyDeletedLN(JLcom/sleepycat/je/tree/LN;[B)V
.end method

.method public abstract processLSN(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
