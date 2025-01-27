.class public Lcom/sleepycat/je/cleaner/DbFileSummaryMap;
.super Ljava/lang/Object;
.source "DbFileSummaryMap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/DbFileSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->map:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/cleaner/DbFileSummary;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Long;)Lcom/sleepycat/je/cleaner/DbFileSummary;
    .locals 3
    .param p1, "fileNum"    # Ljava/lang/Long;

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/cleaner/DbFileSummary;

    .line 42
    .local v0, "summary":Lcom/sleepycat/je/cleaner/DbFileSummary;
    if-nez v0, :cond_1

    .line 43
    new-instance v1, Lcom/sleepycat/je/cleaner/DbFileSummary;

    invoke-direct {v1}, Lcom/sleepycat/je/cleaner/DbFileSummary;-><init>()V

    move-object v0, v1

    .line 44
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "oldVal":Ljava/lang/Object;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 47
    .end local v1    # "oldVal":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/DbFileSummaryMap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
