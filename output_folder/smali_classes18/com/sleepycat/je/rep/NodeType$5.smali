.class final enum Lcom/sleepycat/je/rep/NodeType$5;
.super Lcom/sleepycat/je/rep/NodeType;
.source "NodeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/NodeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/NodeType;-><init>(Ljava/lang/String;ILcom/sleepycat/je/rep/NodeType$1;)V

    return-void
.end method


# virtual methods
.method public hasTransientId()Z
    .locals 1

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isExternal()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method
