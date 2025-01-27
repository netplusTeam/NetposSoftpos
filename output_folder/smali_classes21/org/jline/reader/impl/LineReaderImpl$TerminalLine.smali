.class Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;
.super Ljava/lang/Object;
.source "LineReaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/LineReaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TerminalLine"
.end annotation


# instance fields
.field private endLine:Ljava/lang/String;

.field private startPos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "width"    # I

    .line 5159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5160
    iput p2, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->startPos:I

    .line 5161
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    .line 5162
    const/4 v0, 0x1

    .line 5163
    .local v0, "first":Z
    :goto_0
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, p2

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    add-int/2addr v1, v3

    if-le v1, p3, :cond_2

    .line 5164
    if-eqz v0, :cond_1

    .line 5165
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    sub-int v2, p3, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    goto :goto_2

    .line 5167
    :cond_1
    iget-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    .line 5169
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5171
    :cond_2
    if-nez v0, :cond_3

    .line 5172
    iput v2, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->startPos:I

    .line 5174
    :cond_3
    return-void
.end method


# virtual methods
.method public getEndLine()Ljava/lang/String;
    .locals 1

    .line 5181
    iget-object v0, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->endLine:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPos()I
    .locals 1

    .line 5177
    iget v0, p0, Lorg/jline/reader/impl/LineReaderImpl$TerminalLine;->startPos:I

    return v0
.end method
