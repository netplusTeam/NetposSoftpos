.class public Lch/qos/logback/classic/turbo/DuplicateMessageFilter;
.super Lch/qos/logback/classic/turbo/TurboFilter;
.source "DuplicateMessageFilter.java"


# static fields
.field public static final DEFAULT_ALLOWED_REPETITIONS:I = 0x5

.field public static final DEFAULT_CACHE_SIZE:I = 0x64


# instance fields
.field public allowedRepetitions:I

.field public cacheSize:I

.field private msgCache:Lch/qos/logback/classic/turbo/LRUMessageCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lch/qos/logback/classic/turbo/TurboFilter;-><init>()V

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->allowedRepetitions:I

    .line 42
    const/16 v0, 0x64

    iput v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->cacheSize:I

    return-void
.end method


# virtual methods
.method public decide(Lorg/slf4j/Marker;Lch/qos/logback/classic/Logger;Lch/qos/logback/classic/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lch/qos/logback/core/spi/FilterReply;
    .locals 2
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "logger"    # Lch/qos/logback/classic/Logger;
    .param p3, "level"    # Lch/qos/logback/classic/Level;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .param p6, "t"    # Ljava/lang/Throwable;

    .line 61
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->msgCache:Lch/qos/logback/classic/turbo/LRUMessageCache;

    invoke-virtual {v0, p4}, Lch/qos/logback/classic/turbo/LRUMessageCache;->getMessageCountAndThenIncrement(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "count":I
    iget v1, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->allowedRepetitions:I

    if-gt v0, v1, :cond_0

    .line 63
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    return-object v1

    .line 65
    :cond_0
    sget-object v1, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    return-object v1
.end method

.method public getAllowedRepetitions()I
    .locals 1

    .line 70
    iget v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->allowedRepetitions:I

    return v0
.end method

.method public getCacheSize()I
    .locals 1

    .line 83
    iget v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->cacheSize:I

    return v0
.end method

.method public setAllowedRepetitions(I)V
    .locals 0
    .param p1, "allowedRepetitions"    # I

    .line 79
    iput p1, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->allowedRepetitions:I

    .line 80
    return-void
.end method

.method public setCacheSize(I)V
    .locals 0
    .param p1, "cacheSize"    # I

    .line 87
    iput p1, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->cacheSize:I

    .line 88
    return-void
.end method

.method public start()V
    .locals 2

    .line 48
    new-instance v0, Lch/qos/logback/classic/turbo/LRUMessageCache;

    iget v1, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->cacheSize:I

    invoke-direct {v0, v1}, Lch/qos/logback/classic/turbo/LRUMessageCache;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->msgCache:Lch/qos/logback/classic/turbo/LRUMessageCache;

    .line 49
    invoke-super {p0}, Lch/qos/logback/classic/turbo/TurboFilter;->start()V

    .line 50
    return-void
.end method

.method public stop()V
    .locals 1

    .line 54
    iget-object v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->msgCache:Lch/qos/logback/classic/turbo/LRUMessageCache;

    invoke-virtual {v0}, Lch/qos/logback/classic/turbo/LRUMessageCache;->clear()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lch/qos/logback/classic/turbo/DuplicateMessageFilter;->msgCache:Lch/qos/logback/classic/turbo/LRUMessageCache;

    .line 56
    invoke-super {p0}, Lch/qos/logback/classic/turbo/TurboFilter;->stop()V

    .line 57
    return-void
.end method
