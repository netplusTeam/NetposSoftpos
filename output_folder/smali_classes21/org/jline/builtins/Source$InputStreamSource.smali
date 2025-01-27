.class public Lorg/jline/builtins/Source$InputStreamSource;
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
    name = "InputStreamSource"
.end annotation


# instance fields
.field final in:Ljava/io/InputStream;

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "close"    # Z
    .param p3, "name"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    if-eqz p2, :cond_0

    .line 99
    iput-object p1, p0, Lorg/jline/builtins/Source$InputStreamSource;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lorg/jline/builtins/Source$InputStreamSource$1;

    invoke-direct {v0, p0, p1}, Lorg/jline/builtins/Source$InputStreamSource$1;-><init>(Lorg/jline/builtins/Source$InputStreamSource;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/jline/builtins/Source$InputStreamSource;->in:Ljava/io/InputStream;

    .line 107
    :goto_0
    iput-object p3, p0, Lorg/jline/builtins/Source$InputStreamSource;->name:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/jline/builtins/Source$InputStreamSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public lines()Ljava/lang/Long;
    .locals 1

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/jline/builtins/Source$InputStreamSource;->in:Ljava/io/InputStream;

    return-object v0
.end method
