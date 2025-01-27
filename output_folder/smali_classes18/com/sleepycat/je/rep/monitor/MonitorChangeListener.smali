.class public interface abstract Lcom/sleepycat/je/rep/monitor/MonitorChangeListener;
.super Ljava/lang/Object;
.source "MonitorChangeListener.java"


# virtual methods
.method public abstract notify(Lcom/sleepycat/je/rep/monitor/GroupChangeEvent;)V
.end method

.method public abstract notify(Lcom/sleepycat/je/rep/monitor/JoinGroupEvent;)V
.end method

.method public abstract notify(Lcom/sleepycat/je/rep/monitor/LeaveGroupEvent;)V
.end method

.method public abstract notify(Lcom/sleepycat/je/rep/monitor/NewMasterEvent;)V
.end method
