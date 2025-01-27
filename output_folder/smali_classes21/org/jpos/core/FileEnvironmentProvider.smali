.class public Lorg/jpos/core/FileEnvironmentProvider;
.super Ljava/lang/Object;
.source "FileEnvironmentProvider.java"

# interfaces
.implements Lorg/jpos/core/EnvironmentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 36
    .local v0, "path":Ljava/nio/file/Path;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/io/IOException;
    return-object p1
.end method

.method public prefix()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "file::"

    return-object v0
.end method
