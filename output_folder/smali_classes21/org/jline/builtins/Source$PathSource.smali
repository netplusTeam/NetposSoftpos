.class public Lorg/jline/builtins/Source$PathSource;
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
    name = "PathSource"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/jline/builtins/Source$PathSource;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "name"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/jline/builtins/Source$PathSource;->path:Ljava/nio/file/Path;

    .line 68
    iput-object p2, p0, Lorg/jline/builtins/Source$PathSource;->name:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jline/builtins/Source$PathSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public lines()Ljava/lang/Long;
    .locals 3

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "out":Ljava/lang/Long;
    :try_start_0
    iget-object v1, p0, Lorg/jline/builtins/Source$PathSource;->path:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 87
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    return-object v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/jline/builtins/Source$PathSource;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
