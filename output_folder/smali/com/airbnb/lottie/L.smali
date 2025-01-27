.class public Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field public static DBG:Z = false

.field private static final MAX_DEPTH:I = 0x14

.field public static final TAG:Ljava/lang/String; = "LOTTIE"

.field private static cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

.field private static depthPastMaxDepth:I

.field private static fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

.field private static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field private static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

.field private static sections:[Ljava/lang/String;

.field private static startTimeNs:[J

.field private static traceDepth:I

.field private static traceEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    .line 24
    sput-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 27
    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 28
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 4
    .param p0, "section"    # Ljava/lang/String;

    .line 51
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 55
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 56
    return-void

    .line 58
    :cond_1
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    aput-object p0, v1, v0

    .line 59
    sget-object v1, Lcom/airbnb/lottie/L;->startTimeNs:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 60
    invoke-static {p0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 61
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 62
    return-void
.end method

.method public static endSection(Ljava/lang/String;)F
    .locals 4
    .param p0, "section"    # Ljava/lang/String;

    .line 65
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 66
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 67
    return v1

    .line 69
    :cond_0
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-nez v0, :cond_1

    .line 70
    return v1

    .line 72
    :cond_1
    sget v0, Lcom/airbnb/lottie/L;->traceDepth:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/airbnb/lottie/L;->traceDepth:I

    .line 73
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 76
    sget-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/airbnb/lottie/L;->startTimeNs:[J

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    return v0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbalanced trace call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    sget v3, Lcom/airbnb/lottie/L;->traceDepth:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t end trace section. There are none."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "appContext":Landroid/content/Context;
    sget-object v1, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 110
    .local v1, "local":Lcom/airbnb/lottie/network/NetworkCache;
    if-nez v1, :cond_2

    .line 111
    const-class v2, Lcom/airbnb/lottie/network/NetworkCache;

    monitor-enter v2

    .line 112
    :try_start_0
    sget-object v3, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    move-object v1, v3

    .line 113
    if-nez v1, :cond_1

    .line 114
    new-instance v3, Lcom/airbnb/lottie/network/NetworkCache;

    sget-object v4, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/airbnb/lottie/L$1;

    invoke-direct {v4, v0}, Lcom/airbnb/lottie/L$1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v3, v4}, Lcom/airbnb/lottie/network/NetworkCache;-><init>(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V

    move-object v1, v3

    sput-object v3, Lcom/airbnb/lottie/L;->networkCache:Lcom/airbnb/lottie/network/NetworkCache;

    .line 120
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 122
    :cond_2
    :goto_1
    return-object v1
.end method

.method public static networkFetcher(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkFetcher;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 95
    .local v0, "local":Lcom/airbnb/lottie/network/NetworkFetcher;
    if-nez v0, :cond_2

    .line 96
    const-class v1, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v2, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    move-object v0, v2

    .line 98
    if-nez v0, :cond_1

    .line 99
    new-instance v2, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->networkCache(Landroid/content/Context;)Lcom/airbnb/lottie/network/NetworkCache;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;

    invoke-direct {v4}, Lcom/airbnb/lottie/network/DefaultLottieNetworkFetcher;-><init>()V

    :goto_0
    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/airbnb/lottie/network/NetworkCache;Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V

    move-object v0, v2

    sput-object v2, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    .line 101
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 103
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static setCacheProvider(Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;)V
    .locals 0
    .param p0, "customProvider"    # Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 89
    sput-object p0, Lcom/airbnb/lottie/L;->cacheProvider:Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;

    .line 90
    return-void
.end method

.method public static setFetcher(Lcom/airbnb/lottie/network/LottieNetworkFetcher;)V
    .locals 0
    .param p0, "customFetcher"    # Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 85
    sput-object p0, Lcom/airbnb/lottie/L;->fetcher:Lcom/airbnb/lottie/network/LottieNetworkFetcher;

    .line 86
    return-void
.end method

.method public static setTraceEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 40
    sget-boolean v0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    if-ne v0, p0, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    sput-boolean p0, Lcom/airbnb/lottie/L;->traceEnabled:Z

    .line 44
    if-eqz p0, :cond_1

    .line 45
    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/airbnb/lottie/L;->sections:[Ljava/lang/String;

    .line 46
    new-array v0, v0, [J

    sput-object v0, Lcom/airbnb/lottie/L;->startTimeNs:[J

    .line 48
    :cond_1
    return-void
.end method
