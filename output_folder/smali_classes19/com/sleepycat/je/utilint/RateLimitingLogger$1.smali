.class Lcom/sleepycat/je/utilint/RateLimitingLogger$1;
.super Ljava/util/LinkedHashMap;
.source "RateLimitingLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/utilint/RateLimitingLogger;-><init>(IILjava/util/logging/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/utilint/RateLimitingLogger;

.field final synthetic val$maxObjects:I


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/RateLimitingLogger;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/utilint/RateLimitingLogger;
    .param p2, "x0"    # I

    .line 69
    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger$1;, "Lcom/sleepycat/je/utilint/RateLimitingLogger$1;"
    iput-object p1, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger$1;->this$0:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    iput p3, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger$1;->val$maxObjects:I

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/sleepycat/je/utilint/RateLimitingLogger$1;, "Lcom/sleepycat/je/utilint/RateLimitingLogger$1;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/RateLimitingLogger$1;->size()I

    move-result v0

    iget v1, p0, Lcom/sleepycat/je/utilint/RateLimitingLogger$1;->val$maxObjects:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
