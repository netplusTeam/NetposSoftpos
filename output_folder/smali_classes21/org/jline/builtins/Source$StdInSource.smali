.class public Lorg/jline/builtins/Source$StdInSource;
.super Lorg/jline/builtins/Source$InputStreamSource;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StdInSource"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 129
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/jline/builtins/Source$StdInSource;-><init>(Ljava/io/InputStream;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jline/builtins/Source$InputStreamSource;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    .line 134
    return-void
.end method
