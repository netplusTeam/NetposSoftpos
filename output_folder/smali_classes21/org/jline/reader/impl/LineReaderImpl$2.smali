.class Lorg/jline/reader/impl/LineReaderImpl$2;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"

# interfaces
.implements Lorg/jline/reader/CompletingParsedLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jline/reader/impl/LineReaderImpl;->wrap(Lorg/jline/reader/ParsedLine;)Lorg/jline/reader/CompletingParsedLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jline/reader/impl/LineReaderImpl;

.field final synthetic val$line:Lorg/jline/reader/ParsedLine;


# direct methods
.method constructor <init>(Lorg/jline/reader/impl/LineReaderImpl;Lorg/jline/reader/ParsedLine;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jline/reader/impl/LineReaderImpl;

    .line 4558
    iput-object p1, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->this$0:Lorg/jline/reader/impl/LineReaderImpl;

    iput-object p2, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cursor()I
    .locals 1

    .line 4575
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->cursor()I

    move-result v0

    return v0
.end method

.method public escape(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "complete"    # Z

    .line 4578
    return-object p1
.end method

.method public line()Ljava/lang/String;
    .locals 1

    .line 4572
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->line()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawWordCursor()I
    .locals 1

    .line 4581
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl$2;->wordCursor()I

    move-result v0

    return v0
.end method

.method public rawWordLength()I
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lorg/jline/reader/impl/LineReaderImpl$2;->word()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public word()Ljava/lang/String;
    .locals 1

    .line 4560
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->word()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wordCursor()I
    .locals 1

    .line 4563
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->wordCursor()I

    move-result v0

    return v0
.end method

.method public wordIndex()I
    .locals 1

    .line 4566
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->wordIndex()I

    move-result v0

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

    .line 4569
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$2;->val$line:Lorg/jline/reader/ParsedLine;

    invoke-interface {v0}, Lorg/jline/reader/ParsedLine;->words()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
