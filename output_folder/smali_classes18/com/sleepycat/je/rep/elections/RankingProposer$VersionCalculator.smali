.class Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;
.super Ljava/lang/Object;
.source "RankingProposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/RankingProposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionCalculator"
.end annotation


# instance fields
.field private final elections:Lcom/sleepycat/je/rep/elections/Elections;

.field private final exchanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;"
        }
    .end annotation
.end field

.field private lowestVersion:I

.field private majorityVersion:I

.field private singleVersion:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Elections;Ljava/util/Set;)V
    .locals 1
    .param p1, "elections"    # Lcom/sleepycat/je/rep/elections/Elections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/elections/Elections;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p2, "exchanges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->majorityVersion:I

    .line 177
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->lowestVersion:I

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->singleVersion:Z

    .line 183
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->exchanges:Ljava/util/Set;

    .line 184
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 185
    invoke-direct {p0}, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->calculate()V

    .line 186
    return-void
.end method

.method private calculate()V
    .locals 7

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "logFormats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->exchanges:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 197
    .local v2, "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 198
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v5

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Protocol;->PROMISE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-eq v4, v5, :cond_0

    .line 199
    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/elections/Protocol$Promise;

    .line 204
    .local v4, "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v5

    iget v6, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->lowestVersion:I

    if-ge v5, v6, :cond_1

    .line 205
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v5

    iput v5, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->lowestVersion:I

    .line 208
    :cond_1
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 209
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 212
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getLogVersion()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 211
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v2    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    .end local v4    # "p":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    :goto_1
    goto :goto_0

    .line 220
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 221
    iput-boolean v3, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->singleVersion:Z

    .line 222
    return-void

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    if-nez v1, :cond_5

    .line 230
    return-void

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    .line 235
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getElectableGroupSize()I

    move-result v1

    .line 236
    .local v1, "electableNodeCount":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 237
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_6

    .line 238
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->majorityVersion:I

    .line 239
    goto :goto_3

    .line 241
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6
    goto :goto_2

    .line 242
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method skipPromiseDueToVersion(I)Z
    .locals 5
    .param p1, "logVersion"    # I

    .line 268
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->singleVersion:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 269
    return v1

    .line 271
    :cond_0
    sget v0, Lcom/sleepycat/je/rep/elections/RankingProposer;->testLogVersionReplicatePrevious:I

    .line 272
    .local v0, "logVersionReplicatePrevious":I
    if-nez v0, :cond_1

    .line 273
    const/16 v0, 0x9

    .line 276
    :cond_1
    iget v2, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->lowestVersion:I

    add-int/lit8 v3, v0, -0x1

    if-lt v2, v3, :cond_2

    .line 277
    return v1

    .line 279
    :cond_2
    iget v3, p0, Lcom/sleepycat/je/rep/elections/RankingProposer$VersionCalculator;->majorityVersion:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    if-eq v3, v4, :cond_5

    if-eq p1, v2, :cond_5

    if-eq p1, v3, :cond_5

    .line 284
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 287
    :cond_5
    return v1
.end method
