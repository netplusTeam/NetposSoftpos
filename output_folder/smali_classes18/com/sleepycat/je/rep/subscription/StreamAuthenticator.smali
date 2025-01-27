.class public interface abstract Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
.super Ljava/lang/Object;
.source "StreamAuthenticator.java"


# static fields
.field public static final SECURITY_FAILURE_WAIT_TIME_MS:J = 0x1388L


# virtual methods
.method public abstract authenticate()Z
.end method

.method public abstract checkAccess()Z
.end method

.method public abstract getLastCheckTimeMs()J
.end method

.method public abstract setTableIds([Ljava/lang/String;)V
.end method

.method public abstract setToken([B)V
.end method
