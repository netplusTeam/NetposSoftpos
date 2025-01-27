.class synthetic Lcom/sleepycat/je/dbi/CursorImpl$1;
.super Ljava/lang/Object;
.source "CursorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/CursorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sleepycat$je$CacheMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 818
    invoke-static {}, Lcom/sleepycat/je/CacheMode;->values()[Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/dbi/CursorImpl$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    :try_start_0
    sget-object v1, Lcom/sleepycat/je/CacheMode;->EVICT_LN:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sleepycat/je/dbi/CursorImpl$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    sget-object v1, Lcom/sleepycat/je/CacheMode;->EVICT_BIN:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sleepycat/je/dbi/CursorImpl$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    sget-object v1, Lcom/sleepycat/je/CacheMode;->UNCHANGED:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sleepycat/je/dbi/CursorImpl$1;->$SwitchMap$com$sleepycat$je$CacheMode:[I

    sget-object v1, Lcom/sleepycat/je/CacheMode;->MAKE_COLD:Lcom/sleepycat/je/CacheMode;

    invoke-virtual {v1}, Lcom/sleepycat/je/CacheMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
