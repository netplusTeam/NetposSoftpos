.class Lcom/sleepycat/je/rep/impl/RepGroupImpl$7;
.super Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;
.source "RepGroupImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeElectableMembers(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepGroupImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 1076
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepGroupImpl$7;->this$0:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;-><init>()V

    return-void
.end method


# virtual methods
.method include(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z
    .locals 1
    .param p1, "n"    # Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 1079
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/NodeType;->isElectable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->isQuorumAck()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
