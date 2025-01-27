.class Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;
.super Ljava/lang/Object;
.source "VerifyUtils.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/VerifyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GatherLSNs"
.end annotation


# instance fields
.field private final lsns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;->lsns:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/cleaner/VerifyUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/cleaner/VerifyUtils$1;

    .line 163
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLsns()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;->lsns:Ljava/util/Set;

    return-object v0
.end method

.method public noteMemoryExceeded()V
    .locals 0

    .line 189
    return-void
.end method

.method public processDirtyDeletedLN(JLcom/sleepycat/je/tree/LN;[B)V
    .locals 0
    .param p1, "childLsn"    # J
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "lnKey"    # [B

    .line 181
    return-void
.end method

.method public processLSN(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V
    .locals 2
    .param p1, "childLSN"    # J
    .param p3, "childType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "ignore"    # Lcom/sleepycat/je/tree/Node;
    .param p5, "ignore2"    # [B
    .param p6, "ignore3"    # I
    .param p7, "ignore4"    # Z

    .line 173
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;->lsns:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    return-void
.end method
