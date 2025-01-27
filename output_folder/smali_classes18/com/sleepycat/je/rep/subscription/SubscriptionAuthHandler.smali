.class public interface abstract Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;
.super Ljava/lang/Object;
.source "SubscriptionAuthHandler.java"


# virtual methods
.method public abstract getToken()[B
.end method

.method public abstract hasNewToken()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/ReplicationSecurityException;
        }
    .end annotation
.end method
