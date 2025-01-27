.class public Lorg/jline/builtins/Source$ResourceSource;
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
    name = "ResourceSource"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .line 143
    invoke-direct {p0, p1, p1}, Lorg/jline/builtins/Source$ResourceSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jline/builtins/Source$ResourceSource;->resource:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lorg/jline/builtins/Source$ResourceSource;->name:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/jline/builtins/Source$ResourceSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public lines()Ljava/lang/Long;
    .locals 1

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public read()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Source$ResourceSource;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
