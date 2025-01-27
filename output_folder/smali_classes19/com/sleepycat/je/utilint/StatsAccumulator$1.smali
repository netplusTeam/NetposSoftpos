.class Lcom/sleepycat/je/utilint/StatsAccumulator$1;
.super Lcom/sleepycat/je/utilint/LongArrayStat;
.source "StatsAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/utilint/StatsAccumulator;->getStats()Lcom/sleepycat/je/utilint/StatGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/utilint/StatsAccumulator;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/StatsAccumulator;Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/utilint/StatsAccumulator;
    .param p2, "group"    # Lcom/sleepycat/je/utilint/StatGroup;
    .param p3, "definition"    # Lcom/sleepycat/je/utilint/StatDefinition;
    .param p4, "array"    # [J

    .line 173
    iput-object p1, p0, Lcom/sleepycat/je/utilint/StatsAccumulator$1;->this$0:Lcom/sleepycat/je/utilint/StatsAccumulator;

    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/je/utilint/LongArrayStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;[J)V

    return-void
.end method


# virtual methods
.method protected getFormattedValue()Ljava/lang/String;
    .locals 8

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatsAccumulator$1;->array:[J

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/je/utilint/StatsAccumulator$1;->array:[J

    array-length v1, v1

    if-lez v1, :cond_2

    .line 179
    invoke-static {}, Lcom/sleepycat/utilint/FormatUtil;->decimalScale0()Ljava/text/DecimalFormat;

    move-result-object v1

    .line 180
    .local v1, "fmt":Ljava/text/DecimalFormat;
    const/4 v2, 0x1

    .line 181
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sleepycat/je/utilint/StatsAccumulator$1;->array:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 182
    iget-object v4, p0, Lcom/sleepycat/je/utilint/StatsAccumulator$1;->array:[J

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 183
    if-nez v2, :cond_0

    .line 184
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    const/4 v2, 0x0

    .line 188
    mul-int/lit8 v4, v3, 0xa

    .line 189
    .local v4, "startPct":I
    add-int/lit8 v5, v3, 0x1

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, -0x1

    .line 190
    .local v5, "endPct":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v6, p0, Lcom/sleepycat/je/utilint/StatsAccumulator$1;->array:[J

    aget-wide v6, v6, v3

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .end local v4    # "startPct":I
    .end local v5    # "endPct":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "fmt":Ljava/text/DecimalFormat;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
