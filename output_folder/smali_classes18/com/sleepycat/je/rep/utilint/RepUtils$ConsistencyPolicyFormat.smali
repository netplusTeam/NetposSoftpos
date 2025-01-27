.class public interface abstract Lcom/sleepycat/je/rep/utilint/RepUtils$ConsistencyPolicyFormat;
.super Ljava/lang/Object;
.source "RepUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/RepUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConsistencyPolicyFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sleepycat/je/ReplicaConsistencyPolicy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract policyToString(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract stringToPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
