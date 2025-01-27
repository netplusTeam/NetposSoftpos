.class final Lorg/simpleframework/xml/stream/ProviderFactory;
.super Ljava/lang/Object;
.source "ProviderFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/simpleframework/xml/stream/Provider;
    .locals 2

    .line 48
    :try_start_0
    new-instance v0, Lorg/simpleframework/xml/stream/StreamProvider;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/StreamProvider;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v1, Lorg/simpleframework/xml/stream/PullProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/PullProvider;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/simpleframework/xml/stream/DocumentProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/DocumentProvider;-><init>()V

    return-object v1
.end method
