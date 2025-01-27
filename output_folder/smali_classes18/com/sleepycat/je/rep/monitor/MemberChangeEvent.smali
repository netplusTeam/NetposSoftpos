.class public abstract Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;
.super Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;
.source "MemberChangeEvent.java"


# instance fields
.field private final masterName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "masterName"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;->masterName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getMasterName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MemberChangeEvent;->masterName:Ljava/lang/String;

    return-object v0
.end method
