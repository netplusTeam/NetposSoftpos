.class public Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;
.super Ljava/lang/Object;
.source "StatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/statcap/StatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateMinMax"
.end annotation


# instance fields
.field private final maxStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/statcap/StatManager$SDef;",
            ">;"
        }
    .end annotation
.end field

.field private final minStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sleepycat/je/statcap/StatManager$SDef;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/statcap/StatManager;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/statcap/StatManager;[Lcom/sleepycat/je/statcap/StatManager$SDef;[Lcom/sleepycat/je/statcap/StatManager$SDef;)V
    .locals 5
    .param p1, "this$0"    # Lcom/sleepycat/je/statcap/StatManager;
    .param p2, "minStatistics"    # [Lcom/sleepycat/je/statcap/StatManager$SDef;
    .param p3, "maxStatistics"    # [Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 201
    iput-object p1, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->this$0:Lcom/sleepycat/je/statcap/StatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->minStats:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->maxStats:Ljava/util/ArrayList;

    .line 202
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 203
    .local v3, "min":Lcom/sleepycat/je/statcap/StatManager$SDef;
    iget-object v4, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->minStats:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v3    # "min":Lcom/sleepycat/je/statcap/StatManager$SDef;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    array-length v0, p3

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 207
    .local v2, "max":Lcom/sleepycat/je/statcap/StatManager$SDef;
    iget-object v3, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->maxStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "max":Lcom/sleepycat/je/statcap/StatManager$SDef;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :cond_1
    return-void
.end method


# virtual methods
.method public updateBase(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/utilint/StatGroup;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p1, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    .local p2, "other":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sleepycat/je/utilint/StatGroup;>;"
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->minStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 214
    .local v1, "sd":Lcom/sleepycat/je/statcap/StatManager$SDef;
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 215
    .local v2, "group":Lcom/sleepycat/je/utilint/StatGroup;
    if-nez v2, :cond_0

    .line 216
    goto :goto_0

    .line 218
    :cond_0
    nop

    .line 219
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$100(Lcom/sleepycat/je/statcap/StatManager$SDef;)Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    .line 220
    .local v3, "otherValue":Lcom/sleepycat/je/utilint/LongStat;
    if-nez v3, :cond_1

    .line 221
    goto :goto_0

    .line 224
    :cond_1
    nop

    .line 225
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/StatGroup;

    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$100(Lcom/sleepycat/je/statcap/StatManager$SDef;)Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongMinStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongMinStat;

    move-result-object v4

    .line 228
    .local v4, "baseStat":Lcom/sleepycat/je/utilint/LongMinStat;
    if-nez v4, :cond_2

    .line 229
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/utilint/StatGroup;

    .line 230
    .local v5, "sg":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/utilint/LongStat;->copyAndAdd(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/sleepycat/je/utilint/LongMinStat;

    .line 233
    .end local v5    # "sg":Lcom/sleepycat/je/utilint/StatGroup;
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/utilint/LongMinStat;->setMin(J)V

    .line 234
    .end local v1    # "sd":Lcom/sleepycat/je/statcap/StatManager$SDef;
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    .end local v3    # "otherValue":Lcom/sleepycat/je/utilint/LongStat;
    .end local v4    # "baseStat":Lcom/sleepycat/je/utilint/LongMinStat;
    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/statcap/StatManager$UpdateMinMax;->maxStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/statcap/StatManager$SDef;

    .line 236
    .restart local v1    # "sd":Lcom/sleepycat/je/statcap/StatManager$SDef;
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/utilint/StatGroup;

    .line 237
    .restart local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    if-nez v2, :cond_4

    .line 238
    goto :goto_1

    .line 240
    :cond_4
    nop

    .line 241
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$100(Lcom/sleepycat/je/statcap/StatManager$SDef;)Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;->getLongStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    .line 242
    .restart local v3    # "otherValue":Lcom/sleepycat/je/utilint/LongStat;
    if-nez v3, :cond_5

    .line 243
    goto :goto_1

    .line 245
    :cond_5
    nop

    .line 246
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/utilint/StatGroup;

    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$100(Lcom/sleepycat/je/statcap/StatManager$SDef;)Lcom/sleepycat/je/utilint/StatDefinition;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/utilint/StatGroup;->getLongMaxStat(Lcom/sleepycat/je/utilint/StatDefinition;)Lcom/sleepycat/je/utilint/LongMaxStat;

    move-result-object v4

    .line 249
    .local v4, "baseStat":Lcom/sleepycat/je/utilint/LongMaxStat;
    if-nez v4, :cond_6

    .line 250
    invoke-static {v1}, Lcom/sleepycat/je/statcap/StatManager$SDef;->access$000(Lcom/sleepycat/je/statcap/StatManager$SDef;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/utilint/StatGroup;

    .line 251
    .restart local v5    # "sg":Lcom/sleepycat/je/utilint/StatGroup;
    invoke-virtual {v3, v5}, Lcom/sleepycat/je/utilint/LongStat;->copyAndAdd(Lcom/sleepycat/je/utilint/StatGroup;)Lcom/sleepycat/je/utilint/Stat;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/sleepycat/je/utilint/LongMaxStat;

    .line 254
    .end local v5    # "sg":Lcom/sleepycat/je/utilint/StatGroup;
    :cond_6
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->get()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/je/utilint/LongMaxStat;->setMax(J)Z

    .line 255
    .end local v1    # "sd":Lcom/sleepycat/je/statcap/StatManager$SDef;
    .end local v2    # "group":Lcom/sleepycat/je/utilint/StatGroup;
    .end local v3    # "otherValue":Lcom/sleepycat/je/utilint/LongStat;
    .end local v4    # "baseStat":Lcom/sleepycat/je/utilint/LongMaxStat;
    goto :goto_1

    .line 256
    :cond_7
    return-void
.end method
