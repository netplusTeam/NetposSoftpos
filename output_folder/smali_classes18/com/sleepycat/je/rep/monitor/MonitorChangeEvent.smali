.class public abstract Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;
.super Ljava/lang/Object;
.source "MonitorChangeEvent.java"


# instance fields
.field private final nodeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;->nodeName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorChangeEvent;->nodeName:Ljava/lang/String;

    return-object v0
.end method
