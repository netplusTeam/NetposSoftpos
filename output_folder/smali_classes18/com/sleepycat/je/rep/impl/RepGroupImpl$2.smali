.class final Lcom/sleepycat/je/rep/impl/RepGroupImpl$2;
.super Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
.source "RepGroupImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepGroupImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;-><init>()V

    return-void
.end method


# virtual methods
.method include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z
    .locals 1
    .param p1, "n"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 110
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isMonitor()Z

    move-result v0

    return v0
.end method
