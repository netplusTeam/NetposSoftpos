.class public Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;
.super Ljava/lang/Object;
.source "ArgumentCompleter.java"

# interfaces
.implements Lorg/jline/reader/ParsedLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/completer/ArgumentCompleter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgumentLine"
.end annotation


# instance fields
.field private final cursor:I

.field private final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "cursor"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->word:Ljava/lang/String;

    .line 150
    iput p2, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->cursor:I

    .line 151
    return-void
.end method


# virtual methods
.method public cursor()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->cursor:I

    return v0
.end method

.method public line()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->word:Ljava/lang/String;

    return-object v0
.end method

.method public word()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->word:Ljava/lang/String;

    return-object v0
.end method

.method public wordCursor()I
    .locals 1

    .line 160
    iget v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->cursor:I

    return v0
.end method

.method public wordIndex()I
    .locals 1

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public words()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/jline/reader/impl/completer/ArgumentCompleter$ArgumentLine;->word:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
