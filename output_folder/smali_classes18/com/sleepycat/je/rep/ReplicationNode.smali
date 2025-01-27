.class public interface abstract Lcom/sleepycat/je/rep/ReplicationNode;
.super Ljava/lang/Object;
.source "ReplicationNode.java"


# virtual methods
.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getSocketAddress()Ljava/net/InetSocketAddress;
.end method

.method public abstract getType()Lcom/sleepycat/je/rep/NodeType;
.end method
