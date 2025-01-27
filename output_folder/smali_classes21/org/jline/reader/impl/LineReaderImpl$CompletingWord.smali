.class Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"

# interfaces
.implements Lorg/jline/reader/CompletingParsedLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompletingWord"
.end annotation


# instance fields
.field private final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .line 5036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5037
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    .line 5038
    return-void
.end method


# virtual methods
.method public cursor()I
    .locals 1

    .line 5082
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public escape(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "complete"    # Z

    .line 5042
    const/4 v0, 0x0

    return-object v0
.end method

.method public line()Ljava/lang/String;
    .locals 1

    .line 5077
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    return-object v0
.end method

.method public rawWordCursor()I
    .locals 1

    .line 5047
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public rawWordLength()I
    .locals 1

    .line 5052
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public word()Ljava/lang/String;
    .locals 1

    .line 5057
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    return-object v0
.end method

.method public wordCursor()I
    .locals 1

    .line 5062
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$CompletingWord;->word:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public wordIndex()I
    .locals 1

    .line 5067
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

    .line 5072
    const/4 v0, 0x0

    return-object v0
.end method
