.class public Lorg/jline/builtins/Source$URLSource;
.super Ljava/lang/Object;
.source "Source.java"

# interfaces
.implements Lorg/jline/builtins/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLSource"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lorg/jline/builtins/Source$URLSource;->url:Ljava/net/URL;

    .line 34
    iput-object p2, p0, Lorg/jline/builtins/Source$URLSource;->name:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jline/builtins/Source$URLSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public lines()Ljava/lang/Long;
    .locals 3

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "out":Ljava/lang/Long;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/jline/builtins/Source$URLSource;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 54
    :goto_0
    return-object v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/jline/builtins/Source$URLSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
