.class public interface abstract Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticationMethod"
.end annotation


# virtual methods
.method public abstract getClientOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
.end method

.method public abstract getMechanismName()Ljava/lang/String;
.end method

.method public abstract getServerOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
.end method

.method public abstract getServerParams()Ljava/lang/String;
.end method
