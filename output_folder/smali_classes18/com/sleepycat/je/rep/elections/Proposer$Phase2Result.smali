.class Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
.super Ljava/lang/Object;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Proposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Phase2Result"
.end annotation


# instance fields
.field accepts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;->accepts:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/elections/Proposer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/elections/Proposer$1;

    .line 471
    invoke-direct {p0}, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;-><init>()V

    return-void
.end method
