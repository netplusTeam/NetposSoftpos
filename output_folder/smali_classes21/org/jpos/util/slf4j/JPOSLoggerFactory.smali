.class public Lorg/jpos/util/slf4j/JPOSLoggerFactory;
.super Ljava/lang/Object;
.source "JPOSLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field private loggerMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/slf4j/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/slf4j/JPOSLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lorg/jpos/util/slf4j/JPOSLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    .line 34
    .local v0, "simpleLogger":Lorg/slf4j/Logger;
    if-eqz v0, :cond_0

    .line 36
    return-object v0

    .line 40
    :cond_0
    new-instance v1, Lorg/jpos/util/slf4j/JPOSLogger;

    invoke-direct {v1, p1}, Lorg/jpos/util/slf4j/JPOSLogger;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "newInstance":Lorg/slf4j/Logger;
    iget-object v2, p0, Lorg/jpos/util/slf4j/JPOSLoggerFactory;->loggerMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/Logger;

    .line 42
    .local v2, "oldInstance":Lorg/slf4j/Logger;
    if-nez v2, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    return-object v3
.end method
