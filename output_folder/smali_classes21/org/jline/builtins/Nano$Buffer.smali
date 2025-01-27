.class public Lorg/jline/builtins/Nano$Buffer;
.super Ljava/lang/Object;
.source "Nano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/builtins/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Buffer"
.end annotation


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field column:I

.field dirty:Z

.field file:Ljava/lang/String;

.field firstColumnToDisplay:I

.field firstLineToDisplay:I

.field format:Lorg/jline/builtins/Nano$WriteFormat;

.field line:I

.field lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field markPos:[I

.field offsetInLine:I

.field offsetInLineToDisplay:I

.field offsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

.field final synthetic this$0:Lorg/jline/builtins/Nano;

.field uncut:Z

.field wantedColumn:I


# direct methods
.method protected constructor <init>(Lorg/jline/builtins/Nano;Ljava/lang/String;)V
    .locals 3
    .param p1, "this$0"    # Lorg/jline/builtins/Nano;
    .param p2, "file"    # Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    sget-object v0, Lorg/jline/builtins/Nano$WriteFormat;->UNIX:Lorg/jline/builtins/Nano$WriteFormat;

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->format:Lorg/jline/builtins/Nano$WriteFormat;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    .line 192
    iput-boolean v0, p0, Lorg/jline/builtins/Nano$Buffer;->uncut:Z

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    .line 199
    iput-object p2, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    .line 200
    invoke-static {p1}, Lorg/jline/builtins/Nano;->access$000(Lorg/jline/builtins/Nano;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lorg/jline/builtins/Nano;->access$100(Lorg/jline/builtins/Nano;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/jline/builtins/Nano;->access$200(Lorg/jline/builtins/Nano;)Z

    move-result v2

    invoke-static {v0, p2, v1, v2}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->build(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jline/builtins/Nano$SyntaxHighlighter;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    .line 201
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$800(Lorg/jline/builtins/Nano$Buffer;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/Nano$Buffer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private charPosition(I)I
    .locals 2
    .param p1, "displayPosition"    # I

    .line 281
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    sget-object v1, Lorg/jline/builtins/Nano$CursorMovement;->STILL:Lorg/jline/builtins/Nano$CursorMovement;

    invoke-direct {p0, v0, p1, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(IILorg/jline/builtins/Nano$CursorMovement;)I

    move-result v0

    return v0
.end method

.method private charPosition(II)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "displayPosition"    # I

    .line 289
    sget-object v0, Lorg/jline/builtins/Nano$CursorMovement;->STILL:Lorg/jline/builtins/Nano$CursorMovement;

    invoke-direct {p0, p1, p2, v0}, Lorg/jline/builtins/Nano$Buffer;->charPosition(IILorg/jline/builtins/Nano$CursorMovement;)I

    move-result v0

    return v0
.end method

.method private charPosition(IILorg/jline/builtins/Nano$CursorMovement;)I
    .locals 6
    .param p1, "line"    # I
    .param p2, "displayPosition"    # I
    .param p3, "move"    # Lorg/jline/builtins/Nano$CursorMovement;

    .line 293
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 294
    .local v0, "out":I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 296
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "rdiff":I
    const/4 v2, 0x0

    .line 299
    .local v2, "ldiff":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 300
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v4

    .line 301
    .local v4, "dp":I
    sget-object v5, Lorg/jline/builtins/Nano$CursorMovement;->LEFT:Lorg/jline/builtins/Nano$CursorMovement;

    if-ne p3, v5, :cond_1

    .line 302
    if-gt v4, p2, :cond_6

    .line 303
    move v0, v3

    goto :goto_1

    .line 307
    :cond_1
    sget-object v5, Lorg/jline/builtins/Nano$CursorMovement;->RIGHT:Lorg/jline/builtins/Nano$CursorMovement;

    if-ne p3, v5, :cond_2

    .line 308
    if-lt v4, p2, :cond_4

    .line 309
    move v0, v3

    .line 310
    goto :goto_3

    .line 312
    :cond_2
    sget-object v5, Lorg/jline/builtins/Nano$CursorMovement;->STILL:Lorg/jline/builtins/Nano$CursorMovement;

    if-ne p3, v5, :cond_4

    .line 313
    if-gt v4, p2, :cond_3

    .line 314
    sub-int v2, p2, v4

    .line 315
    move v0, v3

    goto :goto_1

    .line 316
    :cond_3
    if-lt v4, p2, :cond_4

    .line 317
    sub-int v1, v4, p2

    .line 318
    if-ge v1, v2, :cond_6

    .line 319
    move v0, v3

    goto :goto_3

    .line 299
    .end local v4    # "dp":I
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "rdiff":I
    .end local v2    # "ldiff":I
    .end local v3    # "i":I
    :cond_5
    :goto_2
    move v0, p2

    .line 326
    :cond_6
    :goto_3
    return v0
.end method

.method private charPosition(ILorg/jline/builtins/Nano$CursorMovement;)I
    .locals 1
    .param p1, "displayPosition"    # I
    .param p2, "move"    # Lorg/jline/builtins/Nano$CursorMovement;

    .line 285
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-direct {p0, v0, p1, p2}, Lorg/jline/builtins/Nano$Buffer;->charPosition(IILorg/jline/builtins/Nano$CursorMovement;)I

    move-result v0

    return v0
.end method

.method private computeCursorPosition(II)I
    .locals 5
    .param p1, "cursor"    # I
    .param p2, "rwidth"    # I

    .line 947
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 948
    .local v0, "cur":I
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 950
    .local v1, "off":I
    :goto_0
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-lt v0, v2, :cond_4

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    if-ge v1, v3, :cond_0

    goto :goto_3

    .line 964
    :cond_0
    if-ne v0, v2, :cond_3

    .line 965
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v2, v2, Lorg/jline/builtins/Nano;->wrapping:Z

    if-nez v2, :cond_1

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->width()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 966
    :goto_1
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->width()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_1

    .line 967
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->width()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    goto :goto_1

    .line 970
    :cond_1
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    sub-int/2addr v2, v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 971
    nop

    .line 976
    return p1

    .line 973
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 951
    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v2, v2, Lorg/jline/builtins/Nano;->wrapping:Z

    if-nez v2, :cond_5

    .line 952
    add-int/2addr p1, p2

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_5
    add-int/2addr p1, p2

    .line 956
    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v2

    .line 957
    .local v2, "next":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 958
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    .line 960
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 961
    const/4 v1, 0x0

    .line 963
    .end local v2    # "next":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_4
    goto :goto_0
.end method

.method private cursorDown(I)V
    .locals 6
    .param p1, "lines"    # I

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    .line 624
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    .line 625
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->wrapping:Z

    if-nez v1, :cond_1

    .line 626
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 627
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 628
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 629
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    goto :goto_0

    .line 631
    :cond_0
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->bof()V

    .line 632
    goto :goto_2

    .line 635
    :cond_1
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "txt":Ljava/lang/String;
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    invoke-direct {p0, v2, v3}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v2

    .line 637
    .local v2, "off":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    goto :goto_1

    .line 639
    :cond_2
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 640
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->eof()V

    .line 641
    goto :goto_2

    .line 643
    :cond_3
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 644
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 645
    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    :goto_1
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    invoke-direct {p0, v3, v4}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 648
    .local v3, "next":I
    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    sub-int v5, v3, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 649
    .end local v1    # "txt":Ljava/lang/String;
    .end local v2    # "off":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .end local v3    # "next":I
    goto/16 :goto_0

    .line 651
    :cond_4
    :goto_2
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 652
    return-void
.end method

.method private cursorUp(I)V
    .locals 4
    .param p1, "lines"    # I

    .line 655
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    .line 656
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    .line 657
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->wrapping:Z

    if-nez v0, :cond_1

    .line 658
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-lez v0, :cond_0

    .line 659
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 660
    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->bof()V

    .line 663
    goto :goto_2

    .line 666
    :cond_1
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Nano$Buffer;->prevLineOffset(II)Ljava/util/Optional;

    move-result-object v0

    .line 667
    .local v0, "prev":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 668
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    goto :goto_1

    .line 669
    :cond_2
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-lez v1, :cond_3

    .line 670
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 671
    const v2, 0x7fffffff

    invoke-direct {p0, v1, v2}, Lorg/jline/builtins/Nano$Buffer;->prevLineOffset(II)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 672
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-direct {p0, v2, v1}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v1

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-virtual {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 673
    .local v1, "next":I
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 674
    .end local v1    # "next":I
    nop

    .line 678
    .end local v0    # "prev":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_1
    goto/16 :goto_0

    .line 675
    .restart local v0    # "prev":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->bof()V

    .line 680
    .end local v0    # "prev":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :cond_4
    :goto_2
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 681
    return-void
.end method

.method private doSearch(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    .line 1122
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->searchCaseSensitive:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x42

    .line 1123
    :goto_0
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v3, v3, Lorg/jline/builtins/Nano;->searchRegexp:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    .line 1121
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1124
    .local v0, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1125
    .local v1, "m":Ljava/util/regex/Matcher;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v3, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1127
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lorg/jline/builtins/Nano;->matchedLength:I

    goto :goto_2

    .line 1130
    :cond_2
    return-object v3
.end method

.method static synthetic lambda$nextLineOffset$0(ILjava/lang/Integer;)Z
    .locals 1
    .param p0, "offsetInLine"    # I
    .param p1, "o"    # Ljava/lang/Integer;

    .line 569
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private length(Ljava/lang/String;)I
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 1202
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v1, v1, Lorg/jline/builtins/Nano;->tabs:I

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->columnLength()I

    move-result v0

    return v0
.end method

.method private nextLineOffset(II)Ljava/util/Optional;
    .locals 2
    .param p1, "line"    # I
    .param p2, "offsetInLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 566
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/jline/builtins/Nano$Buffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/jline/builtins/Nano$Buffer$$ExternalSyntheticLambda0;-><init>(I)V

    .line 569
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 568
    return-object v0
.end method

.method private prevLineOffset(II)Ljava/util/Optional;
    .locals 3
    .param p1, "line"    # I
    .param p2, "offsetInLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 552
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 555
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 557
    .local v1, "off":I
    if-ge v1, p2, :cond_1

    .line 558
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    return-object v2

    .line 560
    .end local v1    # "off":I
    :cond_1
    goto :goto_0

    .line 561
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method backspace(I)Z
    .locals 8
    .param p1, "count"    # I

    .line 455
    :goto_0
    const/4 v0, 0x1

    if-lez p1, :cond_2

    .line 456
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 457
    .local v1, "text":Ljava/lang/String;
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v2

    .line 458
    .local v2, "pos":I
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 459
    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-nez v4, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->bof()V

    .line 461
    return v3

    .line 463
    :cond_0
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    .local v3, "prev":Ljava/lang/String;
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano$Buffer;->computeOffsets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-direct {p0, v3}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 467
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/2addr v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 468
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/2addr v5, v0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 469
    nop

    .end local v3    # "prev":Ljava/lang/String;
    add-int/lit8 p1, p1, -0x1

    .line 470
    goto :goto_1

    .line 471
    :cond_1
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 472
    .local v4, "nb":I
    sub-int v5, v2, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v5

    .line 473
    .local v5, "curPos":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v7, v2, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->computeOffsets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-virtual {p0, v5}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 477
    sub-int/2addr p1, v4

    .line 479
    .end local v4    # "nb":I
    .end local v5    # "curPos":I
    :goto_1
    iput-boolean v0, p0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    .line 480
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "pos":I
    goto/16 :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 482
    return v0
.end method

.method public beginningOfLine()V
    .locals 1

    .line 1010
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 1011
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    .line 1012
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 1013
    return-void
.end method

.method blanks(I)Ljava/lang/String;
    .locals 3
    .param p1, "nb"    # I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 332
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method bof()V
    .locals 0

    .line 707
    return-void
.end method

.method computeAllOffsets()V
    .locals 4

    .line 388
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->computeOffsets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v1    # "text":Ljava/lang/String;
    goto :goto_0

    .line 392
    :cond_0
    return-void
.end method

.method computeHeader()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "left":Ljava/lang/String;
    const/4 v2, 0x0

    .line 725
    .local v2, "middle":Ljava/lang/String;
    iget-boolean v3, v0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    if-eqz v3, :cond_0

    const-string v3, "Modified"

    goto :goto_0

    :cond_0
    const-string v3, "        "

    .line 727
    .local v3, "right":Ljava/lang/String;
    :goto_0
    iget-object v4, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v4

    .line 728
    .local v4, "width":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    add-int/2addr v5, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 729
    .local v5, "mstart":I
    add-int/lit8 v8, v4, -0x2

    add-int/lit8 v8, v8, -0x8

    .line 731
    .local v8, "mend":I
    iget-object v9, v0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    const/4 v10, 0x0

    if-nez v9, :cond_1

    .line 732
    const-string v2, "New Buffer"

    goto/16 :goto_5

    .line 734
    :cond_1
    sub-int v9, v8, v5

    .line 735
    .local v9, "max":I
    iget-object v11, v0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    .line 736
    .local v11, "src":Ljava/lang/String;
    const-string v12, "File: "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    if-le v13, v9, :cond_7

    .line 737
    const/16 v12, 0x2f

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 738
    .local v12, "lastSep":I
    const-string v13, "File: ..."

    if-lez v12, :cond_3

    .line 739
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 740
    .local v14, "p1":Ljava/lang/String;
    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 741
    .local v15, "p0":Ljava/lang/String;
    :goto_1
    const-string v6, "."

    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 742
    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x2

    goto :goto_1

    .line 744
    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v9, v6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v6, v6, v16

    .line 746
    .local v6, "nb":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    move-object/from16 v18, v1

    .end local v1    # "left":Ljava/lang/String;
    .local v18, "left":Ljava/lang/String;
    sub-int v1, v17, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 747
    .local v1, "cut":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 738
    .end local v6    # "nb":I
    .end local v14    # "p1":Ljava/lang/String;
    .end local v15    # "p0":Ljava/lang/String;
    .end local v18    # "left":Ljava/lang/String;
    .local v1, "left":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v1

    .line 749
    .end local v1    # "left":Ljava/lang/String;
    .restart local v18    # "left":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v1, v18

    goto :goto_4

    .line 750
    :cond_5
    :goto_3
    const/4 v1, 0x0

    .line 751
    .end local v18    # "left":Ljava/lang/String;
    .restart local v1    # "left":Ljava/lang/String;
    add-int/lit8 v9, v8, -0x2

    .line 752
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v9, v6

    .line 753
    .restart local v6    # "nb":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 754
    .local v7, "cut":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 755
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_6

    .line 756
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 759
    .end local v6    # "nb":I
    .end local v7    # "cut":I
    .end local v12    # "lastSep":I
    :cond_6
    :goto_4
    goto :goto_5

    .line 760
    :cond_7
    move-object/from16 v18, v1

    .end local v1    # "left":Ljava/lang/String;
    .restart local v18    # "left":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, v18

    .line 764
    .end local v9    # "max":I
    .end local v11    # "src":Ljava/lang/String;
    .end local v18    # "left":Ljava/lang/String;
    .restart local v1    # "left":Ljava/lang/String;
    :goto_5
    const/4 v6, 0x0

    .line 765
    .local v6, "pos":I
    new-instance v7, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v7}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 766
    .local v7, "sb":Lorg/jline/utils/AttributedStringBuilder;
    sget-object v9, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 767
    const-string v9, "  "

    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 768
    const/4 v9, 0x2

    add-int/2addr v6, v9

    .line 770
    const-string v9, " "

    if-eqz v1, :cond_8

    .line 771
    invoke-virtual {v7, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 772
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    .line 773
    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 774
    const/4 v10, 0x1

    add-int/2addr v6, v10

    .line 775
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_6
    iget-object v11, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v11, v11, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v11}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x2

    div-int/2addr v11, v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v11, v13

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    sub-int/2addr v11, v12

    if-ge v10, v11, :cond_8

    .line 776
    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 777
    add-int/lit8 v6, v6, 0x1

    .line 775
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 780
    .end local v10    # "i":I
    :cond_8
    invoke-virtual {v7, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 781
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    .line 782
    :goto_7
    add-int/lit8 v10, v4, -0x8

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    if-ge v6, v10, :cond_9

    .line 783
    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 784
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 786
    :cond_9
    invoke-virtual {v7, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 787
    const-string v9, "  \n"

    invoke-virtual {v7, v9}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 788
    iget-object v9, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v9, v9, Lorg/jline/builtins/Nano;->oneMoreLine:Z

    if-eqz v9, :cond_a

    .line 789
    invoke-virtual {v7}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    return-object v9

    .line 791
    :cond_a
    const/4 v9, 0x2

    new-array v9, v9, [Lorg/jline/utils/AttributedString;

    invoke-virtual {v7}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Lorg/jline/utils/AttributedString;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    return-object v9
.end method

.method computeOffsets(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v1, v1, Lorg/jline/builtins/Nano;->tabs:I

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v1, v1, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v2, v2, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    .line 397
    .local v1, "width":I
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 398
    .local v2, "offsets":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v3, v3, Lorg/jline/builtins/Nano;->wrapping:Z

    if-eqz v3, :cond_5

    .line 400
    const/4 v3, 0x0

    .line 401
    .local v3, "last":I
    const/4 v4, 0x0

    .line 402
    .local v4, "prevword":I
    const/4 v5, 0x0

    .line 403
    .local v5, "inspace":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 404
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Lorg/jline/builtins/Nano$Buffer;->isBreakable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 405
    const/4 v5, 0x1

    goto :goto_2

    .line 406
    :cond_1
    if-eqz v5, :cond_2

    .line 407
    move v4, v6

    .line 408
    const/4 v5, 0x0

    .line 410
    :cond_2
    :goto_2
    add-int v7, v3, v1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 411
    if-ne v4, v3, :cond_3

    .line 412
    move v4, v6

    .line 414
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 415
    move v3, v4

    .line 403
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 419
    .end local v3    # "last":I
    .end local v4    # "prevword":I
    .end local v5    # "inspace":Z
    .end local v6    # "i":I
    :cond_5
    return-object v2
.end method

.method copy()V
    .locals 8

    .line 1206
    iget-boolean v0, p0, Lorg/jline/builtins/Nano$Buffer;->uncut:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v0}, Lorg/jline/builtins/Nano;->access$700(Lorg/jline/builtins/Nano;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->mark:Z

    if-eqz v0, :cond_1

    .line 1207
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    .line 1209
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->mark:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1210
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getMarkStart()[I

    move-result-object v0

    .line 1211
    .local v0, "s":[I
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getMarkEnd()[I

    move-result-object v3

    .line 1212
    .local v3, "e":[I
    aget v4, v0, v2

    aget v5, v3, v2

    if-ne v4, v5, :cond_2

    .line 1213
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v6, v0, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget v6, v0, v2

    aget v7, v0, v1

    invoke-direct {p0, v6, v7}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v6

    aget v7, v3, v2

    aget v1, v3, v1

    invoke-direct {p0, v7, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v1

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1215
    :cond_2
    aget v4, v0, v1

    if-eqz v4, :cond_3

    .line 1216
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v6, v0, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget v6, v0, v2

    aget v7, v0, v1

    invoke-direct {p0, v6, v7}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    aget v4, v0, v2

    add-int/2addr v4, v1

    aput v4, v0, v2

    .line 1219
    :cond_3
    aget v4, v0, v2

    .local v4, "i":I
    :goto_0
    aget v5, v3, v2

    if-ge v4, v5, :cond_4

    .line 1220
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1222
    .end local v4    # "i":I
    :cond_4
    aget v4, v3, v1

    if-eqz v4, :cond_5

    .line 1223
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v6, v3, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aget v6, v3, v2

    aget v1, v3, v1

    invoke-direct {p0, v6, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iput-boolean v2, v1, Lorg/jline/builtins/Nano;->mark:Z

    .line 1227
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->mark()V

    .line 1228
    .end local v0    # "s":[I
    .end local v3    # "e":[I
    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v0}, Lorg/jline/builtins/Nano;->access$700(Lorg/jline/builtins/Nano;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1229
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    .local v0, "l":Ljava/lang/String;
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v1

    .line 1231
    .local v1, "col":I
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v3, v3, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    .line 1233
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "col":I
    goto :goto_2

    .line 1234
    :cond_7
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->cursorDown(I)V

    .line 1237
    :goto_2
    iput-boolean v2, p0, Lorg/jline/builtins/Nano$Buffer;->uncut:Z

    .line 1238
    return-void
.end method

.method cut()V
    .locals 1

    .line 1241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->cut(Z)V

    .line 1242
    return-void
.end method

.method cut(Z)V
    .locals 11
    .param p1, "toEnd"    # Z

    .line 1245
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 1246
    iget-boolean v0, p0, Lorg/jline/builtins/Nano$Buffer;->uncut:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v0}, Lorg/jline/builtins/Nano;->access$700(Lorg/jline/builtins/Nano;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->mark:Z

    if-eqz v0, :cond_1

    .line 1247
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    .line 1249
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->mark:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 1250
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getMarkStart()[I

    move-result-object v0

    .line 1251
    .local v0, "s":[I
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getMarkEnd()[I

    move-result-object v3

    .line 1252
    .local v3, "e":[I
    aget v4, v0, v2

    aget v5, v3, v2

    if-ne v4, v5, :cond_2

    .line 1253
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1254
    .local v4, "l":Ljava/lang/String;
    aget v5, v0, v2

    aget v6, v0, v1

    invoke-direct {p0, v5, v6}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v5

    .line 1255
    .local v5, "cols":I
    aget v6, v3, v2

    aget v7, v3, v1

    invoke-direct {p0, v6, v7}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v6

    .line 1256
    .local v6, "cole":I
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v7, v7, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v8, v0, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1258
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 1259
    invoke-virtual {p0, v5, v1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    .line 1260
    .end local v4    # "l":Ljava/lang/String;
    .end local v5    # "cols":I
    .end local v6    # "cole":I
    goto/16 :goto_1

    .line 1261
    :cond_2
    aget v4, v0, v2

    .line 1262
    .local v4, "ls":I
    aget v5, v0, v2

    aget v6, v0, v1

    invoke-direct {p0, v5, v6}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v5

    .line 1263
    .local v5, "cs":I
    aget v6, v0, v1

    if-eqz v6, :cond_3

    .line 1264
    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v7, v0, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1265
    .local v6, "l":Ljava/lang/String;
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v7, v7, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v8, v0, v2

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1267
    aget v7, v0, v2

    add-int/2addr v7, v1

    aput v7, v0, v2

    .line 1269
    .end local v6    # "l":Ljava/lang/String;
    :cond_3
    aget v6, v0, v2

    .local v6, "i":I
    :goto_0
    aget v7, v3, v2

    if-ge v6, v7, :cond_4

    .line 1270
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v7, v7, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v9, v0, v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1271
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v8, v0, v2

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1269
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1273
    .end local v6    # "i":I
    :cond_4
    aget v6, v3, v1

    if-eqz v6, :cond_5

    .line 1274
    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v7, v0, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1275
    .local v6, "l":Ljava/lang/String;
    aget v7, v3, v2

    aget v8, v3, v1

    invoke-direct {p0, v7, v8}, Lorg/jline/builtins/Nano$Buffer;->charPosition(II)I

    move-result v7

    .line 1276
    .local v7, "col":I
    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v8, v8, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    aget v9, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .end local v6    # "l":Ljava/lang/String;
    .end local v7    # "col":I
    :cond_5
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 1280
    invoke-virtual {p0, v5, v4}, Lorg/jline/builtins/Nano$Buffer;->gotoLine(II)V

    .line 1282
    .end local v4    # "ls":I
    .end local v5    # "cs":I
    :goto_1
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iput-boolean v2, v4, Lorg/jline/builtins/Nano;->mark:Z

    .line 1283
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->mark()V

    .line 1284
    .end local v0    # "s":[I
    .end local v3    # "e":[I
    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v0}, Lorg/jline/builtins/Nano;->access$700(Lorg/jline/builtins/Nano;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_2

    .line 1301
    :cond_7
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1303
    iput v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 1304
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-le v0, v3, :cond_b

    .line 1305
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    goto :goto_3

    .line 1285
    :cond_8
    :goto_2
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1286
    .local v0, "l":Ljava/lang/String;
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v3

    .line 1287
    .local v3, "col":I
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1289
    if-eqz p1, :cond_a

    .line 1290
    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1292
    :cond_9
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1293
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1294
    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-le v4, v5, :cond_9

    .line 1295
    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1300
    .end local v0    # "l":Ljava/lang/String;
    .end local v3    # "col":I
    :cond_a
    nop

    .line 1308
    :cond_b
    :goto_3
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v0}, Lorg/jline/utils/Display;->clear()V

    .line 1309
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 1310
    iput-boolean v1, p0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    .line 1311
    iput-boolean v2, p0, Lorg/jline/builtins/Nano$Buffer;->uncut:Z

    .line 1313
    :cond_c
    return-void
.end method

.method delete(I)V
    .locals 2
    .param p1, "count"    # I

    .line 451
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->backspace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    return-void
.end method

.method public endOfLine()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v0

    .line 1017
    .local v0, "x":I
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    .line 1018
    return-void
.end method

.method ensureCursorVisible()V
    .locals 6

    .line 684
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeHeader()Ljava/util/List;

    move-result-object v0

    .line 685
    .local v0, "header":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v1, v1, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    .line 686
    .local v1, "rwidth":I
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v2}, Lorg/jline/terminal/Size;->getRows()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-virtual {v3}, Lorg/jline/builtins/Nano;->computeFooter()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 688
    .local v2, "height":I
    :goto_0
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    const/4 v5, 0x1

    if-lt v3, v4, :cond_4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    if-ge v3, v4, :cond_0

    goto :goto_4

    .line 694
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v4}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v4, v4, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    add-int/2addr v3, v4

    invoke-direct {p0, v3, v1}, Lorg/jline/builtins/Nano$Buffer;->computeCursorPosition(II)I

    move-result v3

    .line 695
    .local v3, "cursor":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    mul-int/2addr v4, v1

    if-lt v3, v4, :cond_3

    .line 696
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v4, v4, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_3

    :cond_2
    div-int/lit8 v4, v2, 0x2

    :goto_3
    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano$Buffer;->moveDisplayDown(I)V

    .line 700
    .end local v3    # "cursor":I
    goto :goto_1

    .line 701
    :cond_3
    return-void

    .line 690
    :cond_4
    :goto_4
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v3, v3, Lorg/jline/builtins/Nano;->smoothScrolling:Z

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    div-int/lit8 v5, v2, 0x2

    :goto_5
    invoke-virtual {p0, v5}, Lorg/jline/builtins/Nano$Buffer;->moveDisplayUp(I)V

    goto :goto_0
.end method

.method eof()V
    .locals 0

    .line 704
    return-void
.end method

.method public firstLine()V
    .locals 1

    .line 1047
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1048
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 1049
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 1050
    return-void
.end method

.method getCurrentChar()C
    .locals 3

    .line 980
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 981
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 982
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1

    .line 983
    :cond_0
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 984
    const/16 v1, 0xa

    return v1

    .line 986
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getDisplayedCursor()I
    .locals 2

    .line 943
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v1, v1, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v1}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Nano$Buffer;->computeCursorPosition(II)I

    move-result v0

    return v0
.end method

.method getDisplayedLines(I)Ljava/util/List;
    .locals 18
    .param p1, "nbLines"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/jline/utils/AttributedString;",
            ">;"
        }
    .end annotation

    .line 855
    move-object/from16 v0, p0

    sget-object v1, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStyle;->foreground(I)Lorg/jline/utils/AttributedStyle;

    move-result-object v1

    .line 856
    .local v1, "s":Lorg/jline/utils/AttributedStyle;
    new-instance v3, Lorg/jline/utils/AttributedString;

    const-string v4, "\u2026"

    invoke-direct {v3, v4, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    .line 857
    .local v3, "cut":Lorg/jline/utils/AttributedString;
    new-instance v4, Lorg/jline/utils/AttributedString;

    const-string v5, "\u21a9"

    invoke-direct {v4, v5, v1}, Lorg/jline/utils/AttributedString;-><init>(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)V

    .line 859
    .local v4, "ret":Lorg/jline/utils/AttributedString;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v5, "newLines":Ljava/util/List;, "Ljava/util/List<Lorg/jline/utils/AttributedString;>;"
    iget-object v6, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v6, v6, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v6}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v6

    .line 861
    .local v6, "rwidth":I
    iget-object v7, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v7, v7, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    sub-int v2, v6, v2

    .line 862
    .local v2, "width":I
    iget v7, v0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 863
    .local v7, "curLine":I
    iget v9, v0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 864
    .local v9, "curOffset":I
    const/4 v10, -0x1

    .line 865
    .local v10, "prevLine":I
    iget-object v11, v0, Lorg/jline/builtins/Nano$Buffer;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    invoke-virtual {v11}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->reset()V

    .line 866
    const/4 v11, 0x0

    .local v11, "terminalLine":I
    :goto_1
    move/from16 v12, p1

    if-ge v11, v12, :cond_a

    .line 867
    new-instance v13, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v13}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    iget-object v14, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v14, v14, Lorg/jline/builtins/Nano;->tabs:I

    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v13

    .line 868
    .local v13, "line":Lorg/jline/utils/AttributedStringBuilder;
    iget-object v14, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v14, v14, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    if-eqz v14, :cond_2

    iget-object v14, v0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v7, v14, :cond_2

    .line 869
    invoke-virtual {v13, v1}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 870
    if-eq v7, v10, :cond_1

    .line 871
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    add-int/lit8 v15, v7, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v8

    const-string v15, "%7d "

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 873
    :cond_1
    const-string v14, "      \u2027 "

    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    .line 875
    :goto_2
    sget-object v14, Lorg/jline/utils/AttributedStyle;->DEFAULT:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v13, v14}, Lorg/jline/utils/AttributedStringBuilder;->style(Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 876
    move v10, v7

    .line 878
    :cond_2
    iget-object v14, v0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_3

    move-object/from16 v16, v1

    goto/16 :goto_5

    .line 880
    :cond_3
    iget-object v14, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v14, v14, Lorg/jline/builtins/Nano;->wrapping:Z

    if-nez v14, :cond_8

    .line 881
    new-instance v14, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v14}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    iget-object v15, v0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v15, v15, Lorg/jline/builtins/Nano;->tabs:I

    invoke-virtual {v14, v15}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v14

    invoke-virtual {v0, v7}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v14

    .line 882
    .local v14, "disp":Lorg/jline/utils/AttributedString;
    iget v15, v0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-ne v15, v7, :cond_6

    .line 883
    const/4 v15, 0x1

    .line 884
    .local v15, "cutCount":I
    iget v8, v0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    if-lez v8, :cond_4

    .line 885
    invoke-virtual {v13, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 886
    const/4 v15, 0x2

    .line 888
    :cond_4
    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v8

    move-object/from16 v16, v1

    .end local v1    # "s":Lorg/jline/utils/AttributedStyle;
    .local v16, "s":Lorg/jline/utils/AttributedStyle;
    iget v1, v0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    sub-int/2addr v8, v1

    add-int/lit8 v1, v15, -0x1

    invoke-virtual {v3}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v17

    mul-int v1, v1, v17

    sub-int v1, v2, v1

    if-lt v8, v1, :cond_5

    .line 889
    iget v1, v0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    add-int v8, v1, v2

    .line 890
    invoke-virtual {v3}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v17

    mul-int v17, v17, v15

    sub-int v8, v8, v17

    .line 889
    invoke-virtual {v0, v7, v1, v8, v13}, Lorg/jline/builtins/Nano$Buffer;->highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V

    .line 891
    invoke-virtual {v13, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_3

    .line 893
    :cond_5
    iget v1, v0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v8

    invoke-virtual {v0, v7, v1, v8, v13}, Lorg/jline/builtins/Nano$Buffer;->highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V

    .line 895
    .end local v15    # "cutCount":I
    :goto_3
    const/4 v8, 0x0

    goto :goto_4

    .line 896
    .end local v16    # "s":Lorg/jline/utils/AttributedStyle;
    .restart local v1    # "s":Lorg/jline/utils/AttributedStyle;
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "s":Lorg/jline/utils/AttributedStyle;
    .restart local v16    # "s":Lorg/jline/utils/AttributedStyle;
    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v1

    if-lt v1, v2, :cond_7

    .line 897
    invoke-virtual {v3}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v1

    sub-int v1, v2, v1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v1, v13}, Lorg/jline/builtins/Nano$Buffer;->highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V

    .line 898
    invoke-virtual {v13, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_4

    .line 900
    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v14}, Lorg/jline/utils/AttributedString;->columnLength()I

    move-result v1

    invoke-virtual {v0, v7, v8, v1, v13}, Lorg/jline/builtins/Nano$Buffer;->highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V

    .line 903
    :goto_4
    nop

    .end local v14    # "disp":Lorg/jline/utils/AttributedString;
    add-int/lit8 v7, v7, 0x1

    .line 904
    goto :goto_5

    .line 905
    .end local v16    # "s":Lorg/jline/utils/AttributedStyle;
    .restart local v1    # "s":Lorg/jline/utils/AttributedStyle;
    :cond_8
    move-object/from16 v16, v1

    .end local v1    # "s":Lorg/jline/utils/AttributedStyle;
    .restart local v16    # "s":Lorg/jline/utils/AttributedStyle;
    invoke-direct {v0, v7, v9}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v1

    .line 906
    .local v1, "nextOffset":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 907
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v0, v7, v9, v14, v13}, Lorg/jline/builtins/Nano$Buffer;->highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V

    .line 908
    invoke-virtual {v13, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 909
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_5

    .line 911
    :cond_9
    const v14, 0x7fffffff

    invoke-virtual {v0, v7, v9, v14, v13}, Lorg/jline/builtins/Nano$Buffer;->highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V

    .line 912
    add-int/lit8 v7, v7, 0x1

    .line 913
    const/4 v9, 0x0

    .line 916
    .end local v1    # "nextOffset":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_5
    const/16 v1, 0xa

    invoke-virtual {v13, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 917
    invoke-virtual {v13}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    .end local v13    # "line":Lorg/jline/utils/AttributedStringBuilder;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 919
    .end local v11    # "terminalLine":I
    .end local v16    # "s":Lorg/jline/utils/AttributedStyle;
    .local v1, "s":Lorg/jline/utils/AttributedStyle;
    :cond_a
    return-object v5
.end method

.method getLine(I)Ljava/lang/String;
    .locals 1
    .param p1, "line"    # I

    .line 715
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getMarkEnd()[I
    .locals 7

    .line 1383
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1384
    .local v0, "out":[I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->mark:Z

    if-nez v1, :cond_0

    .line 1385
    return-object v0

    .line 1387
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-gt v3, v4, :cond_2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    aget v1, v1, v5

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v3, v6

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 1390
    :cond_1
    aput v4, v0, v2

    .line 1391
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v2

    aput v1, v0, v5

    goto :goto_1

    .line 1388
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    .line 1393
    :goto_1
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method getMarkStart()[I
    .locals 7

    .line 1369
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1370
    .local v0, "out":[I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->mark:Z

    if-nez v1, :cond_0

    .line 1371
    return-object v0

    .line 1373
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    const/4 v5, 0x1

    if-gt v3, v4, :cond_2

    if-ne v3, v4, :cond_1

    aget v1, v1, v5

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v3, v6

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 1377
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    goto :goto_1

    .line 1374
    :cond_2
    :goto_0
    aput v4, v0, v2

    .line 1375
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 1379
    :goto_1
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method getTitle()Ljava/lang/String;
    .locals 2

    .line 719
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "New Buffer"

    :goto_0
    return-object v0
.end method

.method public gotoLine(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 933
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 934
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 935
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 937
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 938
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 939
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    .line 940
    return-void
.end method

.method highlightDisplayedLine(IIILorg/jline/utils/AttributedStringBuilder;)V
    .locals 7
    .param p1, "curLine"    # I
    .param p2, "curOffset"    # I
    .param p3, "nextOffset"    # I
    .param p4, "line"    # Lorg/jline/utils/AttributedStringBuilder;

    .line 796
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->highlight:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->syntaxHighlighter:Lorg/jline/builtins/Nano$SyntaxHighlighter;

    new-instance v1, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v1}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v2, v2, Lorg/jline/builtins/Nano;->tabs:I

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/builtins/Nano$SyntaxHighlighter;->highlight(Lorg/jline/utils/AttributedStringBuilder;)Lorg/jline/utils/AttributedString;

    move-result-object v0

    goto :goto_0

    .line 797
    :cond_0
    new-instance v0, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v0}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v1, v1, Lorg/jline/builtins/Nano;->tabs:I

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->tabs(I)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v0

    :goto_0
    nop

    .line 798
    .local v0, "disp":Lorg/jline/utils/AttributedString;
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->highlightStart()[I

    move-result-object v1

    .line 799
    .local v1, "hls":[I
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->highlightEnd()[I

    move-result-object v2

    .line 800
    .local v2, "hle":[I
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_10

    aget v4, v2, v3

    if-ne v4, v5, :cond_1

    goto/16 :goto_1

    .line 802
    :cond_1
    aget v4, v1, v3

    aget v5, v2, v3

    const/4 v6, 0x1

    if-ne v4, v5, :cond_8

    .line 803
    aget v3, v1, v3

    if-ne p1, v3, :cond_7

    .line 804
    aget v3, v1, v6

    if-le v3, p3, :cond_2

    .line 805
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 806
    :cond_2
    aget v3, v1, v6

    if-ge v3, p2, :cond_5

    .line 807
    aget v3, v2, v6

    if-le v3, p3, :cond_3

    .line 808
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 809
    :cond_3
    aget v3, v2, v6

    if-le v3, p2, :cond_4

    .line 810
    aget v3, v2, v6

    invoke-virtual {v0, p2, v3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 811
    aget v3, v2, v6

    invoke-virtual {v0, v3, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 813
    :cond_4
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 816
    :cond_5
    aget v3, v1, v6

    invoke-virtual {v0, p2, v3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 817
    aget v3, v2, v6

    if-le v3, p3, :cond_6

    .line 818
    aget v3, v1, v6

    invoke-virtual {v0, v3, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 820
    :cond_6
    aget v3, v1, v6

    aget v4, v2, v6

    invoke-virtual {v0, v3, v4}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 821
    aget v3, v2, v6

    invoke-virtual {v0, v3, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 825
    :cond_7
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 828
    :cond_8
    aget v4, v1, v3

    if-le p1, v4, :cond_9

    aget v4, v2, v3

    if-ge p1, v4, :cond_9

    .line 829
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto/16 :goto_2

    .line 830
    :cond_9
    aget v4, v1, v3

    if-ne p1, v4, :cond_c

    .line 831
    aget v3, v1, v6

    if-le v3, p3, :cond_a

    .line 832
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 833
    :cond_a
    aget v3, v1, v6

    if-ge v3, p2, :cond_b

    .line 834
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 836
    :cond_b
    aget v3, v1, v6

    invoke-virtual {v0, p2, v3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 837
    aget v3, v1, v6

    invoke-virtual {v0, v3, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 839
    :cond_c
    aget v3, v2, v3

    if-ne p1, v3, :cond_f

    .line 840
    aget v3, v2, v6

    if-ge v3, p2, :cond_d

    .line 841
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 842
    :cond_d
    aget v3, v2, v6

    if-le v3, p3, :cond_e

    .line 843
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 845
    :cond_e
    aget v3, v2, v6

    invoke-virtual {v0, p2, v3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    sget-object v4, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {p4, v3, v4}, Lorg/jline/utils/AttributedStringBuilder;->append(Ljava/lang/CharSequence;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 846
    aget v3, v2, v6

    invoke-virtual {v0, v3, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 849
    :cond_f
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_2

    .line 801
    :cond_10
    :goto_1
    invoke-virtual {v0, p2, p3}, Lorg/jline/utils/AttributedString;->columnSubSequence(II)Lorg/jline/utils/AttributedString;

    move-result-object v3

    invoke-virtual {p4, v3}, Lorg/jline/utils/AttributedStringBuilder;->append(Lorg/jline/utils/AttributedString;)Lorg/jline/utils/AttributedStringBuilder;

    .line 852
    :goto_2
    return-void
.end method

.method protected highlightEnd()[I
    .locals 6

    .line 1145
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1146
    .local v0, "out":[I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->mark:Z

    if-eqz v1, :cond_0

    .line 1147
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getMarkEnd()[I

    move-result-object v0

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v1}, Lorg/jline/builtins/Nano;->access$600(Lorg/jline/builtins/Nano;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v1, v1, Lorg/jline/builtins/Nano;->matchedLength:I

    if-lez v1, :cond_2

    .line 1149
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1150
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v1

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget v3, v3, Lorg/jline/builtins/Nano;->matchedLength:I

    add-int/2addr v1, v3

    .line 1151
    .local v1, "col":I
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 1152
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    .line 1157
    .end local v1    # "col":I
    :cond_2
    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected highlightStart()[I
    .locals 4

    .line 1134
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1135
    .local v0, "out":[I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->mark:Z

    if-eqz v1, :cond_0

    .line 1136
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getMarkStart()[I

    move-result-object v0

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v1}, Lorg/jline/builtins/Nano;->access$600(Lorg/jline/builtins/Nano;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    const/4 v1, 0x0

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    aput v2, v0, v1

    .line 1139
    const/4 v1, 0x1

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1141
    :cond_1
    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method insert(Ljava/lang/String;)V
    .locals 13
    .param p1, "insert"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "text":Ljava/lang/String;
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v1

    .line 340
    .local v1, "pos":I
    const-string v2, "\r\n"

    const-string v3, "\n"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 341
    const-string v2, "\r"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 342
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v2}, Lorg/jline/builtins/Nano;->access$300(Lorg/jline/builtins/Nano;)Z

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v2

    .line 344
    .local v2, "len":I
    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    sub-int v6, v2, v6

    iget v7, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano$Buffer;->blanks(I)Ljava/lang/String;

    move-result-object p1

    .line 346
    .end local v2    # "len":I
    :cond_1
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v2}, Lorg/jline/builtins/Nano;->access$400(Lorg/jline/builtins/Nano;)Z

    move-result v2

    const/16 v6, 0xa

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_3

    .line 347
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v7, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_3

    aget-char v9, v2, v8

    .line 348
    .local v9, "c":C
    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 350
    :cond_2
    if-ne v9, v3, :cond_3

    .line 351
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 358
    :cond_3
    const-string v2, ""

    .line 359
    .local v2, "tail":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "mod":Ljava/lang/String;
    goto :goto_3

    .line 362
    .end local v3    # "mod":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    .restart local v3    # "mod":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v7, "ins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 367
    .local v8, "last":I
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 368
    .local v9, "idx":I
    :goto_4
    if-ltz v9, :cond_5

    .line 369
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v8, v9, 0x1

    .line 371
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    goto :goto_4

    .line 373
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v6

    .line 375
    .local v6, "curPos":I
    iget-object v10, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v11, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v10, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    iget v11, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano$Buffer;->computeOffsets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-interface {v10, v11, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 377
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 378
    iget v10, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/2addr v10, v5

    iput v10, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 379
    iget-object v11, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11, v10, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 380
    iget-object v10, p0, Lorg/jline/builtins/Nano$Buffer;->offsets:Ljava/util/List;

    iget v11, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v12}, Lorg/jline/builtins/Nano$Buffer;->computeOffsets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 382
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 383
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 384
    iput-boolean v5, p0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    .line 385
    return-void
.end method

.method isBreakable(C)Z
    .locals 1
    .param p1, "ch"    # C

    .line 423
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v0}, Lorg/jline/builtins/Nano;->access$500(Lorg/jline/builtins/Nano;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public lastLine()V
    .locals 1

    .line 1053
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1054
    const/4 v0, 0x0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 1055
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 1056
    return-void
.end method

.method mark()V
    .locals 4

    .line 1359
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->mark:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    aput v3, v0, v2

    .line 1361
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->markPos:[I

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 1364
    aput v3, v0, v1

    .line 1366
    :goto_0
    return-void
.end method

.method public matching()V
    .locals 10

    .line 1161
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getCurrentChar()C

    move-result v0

    .line 1162
    .local v0, "opening":I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v1, v1, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1163
    .local v1, "idx":I
    if-ltz v1, :cond_8

    .line 1164
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1165
    .local v2, "dir":I
    :goto_0
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v4, v4, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v6, v6, Lorg/jline/builtins/Nano;->matchBrackets:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1167
    .local v4, "closing":I
    const/4 v5, 0x1

    .line 1168
    .local v5, "lvl":I
    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1169
    .local v6, "cur":I
    iget v7, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v7, v8

    .line 1171
    .local v7, "pos":I
    :cond_1
    :goto_1
    add-int v8, v7, v2

    if-ltz v8, :cond_2

    add-int v8, v7, v2

    invoke-virtual {p0, v6}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 1172
    add-int/2addr v7, v2

    goto :goto_3

    .line 1173
    :cond_2
    add-int v8, v6, v2

    if-ltz v8, :cond_7

    add-int v8, v6, v2

    iget-object v9, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1174
    add-int/2addr v6, v2

    .line 1175
    if-lez v2, :cond_3

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    move v7, v8

    .line 1177
    if-ltz v7, :cond_1

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_4

    .line 1178
    goto :goto_1

    .line 1184
    :cond_4
    :goto_3
    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1185
    .local v8, "c":I
    if-ne v8, v0, :cond_5

    .line 1186
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1187
    :cond_5
    if-ne v8, v4, :cond_6

    .line 1188
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_6

    .line 1189
    iput v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1190
    invoke-virtual {p0, v7}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 1191
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 1192
    return-void

    .line 1195
    .end local v8    # "c":I
    :cond_6
    :goto_4
    goto :goto_1

    .line 1181
    :cond_7
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    const-string v8, "No matching bracket"

    invoke-virtual {v3, v8}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1182
    return-void

    .line 1197
    .end local v2    # "dir":I
    .end local v4    # "closing":I
    .end local v5    # "lvl":I
    .end local v6    # "cur":I
    .end local v7    # "pos":I
    :cond_8
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    const-string v3, "Not a bracket"

    invoke-virtual {v2, v3}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method moveDisplayDown(I)V
    .locals 6
    .param p1, "lines"    # I

    .line 574
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeHeader()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano;->computeFooter()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 576
    .local v0, "height":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_5

    .line 577
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 578
    .local v1, "lastLineToDisplay":I
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v2, v2, Lorg/jline/builtins/Nano;->wrapping:Z

    if-nez v2, :cond_0

    .line 579
    add-int/lit8 v2, v0, -0x1

    add-int/2addr v1, v2

    goto :goto_3

    .line 581
    :cond_0
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 582
    .local v2, "off":I
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_2

    .line 583
    invoke-direct {p0, v1, v2}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v4

    .line 584
    .local v4, "next":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 585
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 587
    :cond_1
    const/4 v2, 0x0

    .line 588
    add-int/lit8 v1, v1, 0x1

    .line 582
    .end local v4    # "next":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 592
    .end local v2    # "off":I
    .end local v3    # "l":I
    :cond_2
    :goto_3
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 593
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->eof()V

    .line 594
    return-void

    .line 596
    :cond_3
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    invoke-direct {p0, v2, v3}, Lorg/jline/builtins/Nano$Buffer;->nextLineOffset(II)Ljava/util/Optional;

    move-result-object v2

    .line 597
    .local v2, "next":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 598
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    goto :goto_4

    .line 600
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 601
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 603
    .end local v1    # "lastLineToDisplay":I
    .end local v2    # "next":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    :goto_4
    goto :goto_0

    .line 604
    :cond_5
    return-void
.end method

.method moveDisplayUp(I)V
    .locals 4
    .param p1, "lines"    # I

    .line 607
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sub-int/2addr v0, v1

    .line 608
    .local v0, "width":I
    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 609
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    if-lez v1, :cond_1

    .line 610
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    goto :goto_1

    .line 611
    :cond_1
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    if-lez v1, :cond_2

    .line 612
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 613
    const v3, 0x7fffffff

    invoke-direct {p0, v1, v3}, Lorg/jline/builtins/Nano$Buffer;->prevLineOffset(II)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    goto :goto_1

    .line 615
    :cond_2
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->bof()V

    .line 616
    return-void

    .line 619
    :cond_3
    return-void
.end method

.method moveDown(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 541
    invoke-direct {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->cursorDown(I)V

    .line 542
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 543
    return-void
.end method

.method moveLeft(I)Z
    .locals 4
    .param p1, "chars"    # I

    .line 486
    const/4 v0, 0x1

    .line 487
    .local v0, "ret":Z
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 488
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int v3, v1, v2

    if-lez v3, :cond_0

    .line 489
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lorg/jline/builtins/Nano$CursorMovement;->LEFT:Lorg/jline/builtins/Nano$CursorMovement;

    invoke-virtual {p0, v1, v2}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(ILorg/jline/builtins/Nano$CursorMovement;)V

    goto :goto_0

    .line 490
    :cond_0
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-lez v1, :cond_1

    .line 491
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 492
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->bof()V

    .line 495
    const/4 v0, 0x0

    .line 499
    :cond_2
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    .line 500
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 501
    return v0
.end method

.method moveRight(I)Z
    .locals 1
    .param p1, "chars"    # I

    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    move-result v0

    return v0
.end method

.method moveRight(IZ)Z
    .locals 6
    .param p1, "chars"    # I
    .param p2, "fromBeginning"    # Z

    .line 513
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 514
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    .line 515
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 516
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 517
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 519
    :cond_0
    const/4 v1, 0x1

    .line 520
    .local v1, "ret":Z
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 521
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-virtual {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result v2

    .line 522
    .local v2, "len":I
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    if-gt v5, v2, :cond_1

    .line 523
    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lorg/jline/builtins/Nano$CursorMovement;->RIGHT:Lorg/jline/builtins/Nano$CursorMovement;

    invoke-virtual {p0, v3, v4}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(ILorg/jline/builtins/Nano$CursorMovement;)V

    goto :goto_1

    .line 524
    :cond_1
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/jline/builtins/Nano$Buffer;->getLine(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 525
    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 526
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    .line 527
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 528
    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 534
    .end local v2    # "len":I
    :goto_1
    goto :goto_0

    .line 530
    .restart local v2    # "len":I
    :cond_2
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->eof()V

    .line 531
    const/4 v1, 0x0

    .line 535
    .end local v2    # "len":I
    :cond_3
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    .line 536
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 537
    return v1
.end method

.method public moveTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 923
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    if-eqz v0, :cond_0

    .line 924
    add-int/lit8 v0, p1, -0x8

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 926
    :cond_0
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 927
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 928
    iput p1, p0, Lorg/jline/builtins/Nano$Buffer;->wantedColumn:I

    .line 929
    invoke-direct {p0, p2}, Lorg/jline/builtins/Nano$Buffer;->cursorDown(I)V

    .line 930
    return-void
.end method

.method moveToChar(I)V
    .locals 1
    .param p1, "pos"    # I

    .line 427
    sget-object v0, Lorg/jline/builtins/Nano$CursorMovement;->STILL:Lorg/jline/builtins/Nano$CursorMovement;

    invoke-virtual {p0, p1, v0}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(ILorg/jline/builtins/Nano$CursorMovement;)V

    .line 428
    return-void
.end method

.method moveToChar(ILorg/jline/builtins/Nano$CursorMovement;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "move"    # Lorg/jline/builtins/Nano$CursorMovement;

    .line 431
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v0, v0, Lorg/jline/builtins/Nano;->wrapping:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 432
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->width()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 433
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    goto :goto_0

    .line 434
    :cond_0
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    add-int/lit8 v2, v0, 0x5

    if-le v2, p1, :cond_1

    .line 435
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->width()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    .line 438
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    invoke-direct {p0, p1, p2}, Lorg/jline/builtins/Nano$Buffer;->charPosition(ILorg/jline/builtins/Nano$CursorMovement;)I

    move-result v0

    .line 440
    .local v0, "cpos":I
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 441
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 443
    :cond_2
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->length(Ljava/lang/String;)I

    move-result p1

    .line 446
    .end local v0    # "cpos":I
    :cond_3
    :goto_1
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jline/builtins/Nano$Buffer;->prevLineOffset(II)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    .line 447
    sub-int v0, p1, v0

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 448
    return-void
.end method

.method moveUp(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 546
    invoke-direct {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->cursorUp(I)V

    .line 547
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->ensureCursorVisible()V

    .line 548
    return-void
.end method

.method public nextPage()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeHeader()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano;->computeFooter()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1030
    .local v0, "height":I
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->scrollDown(I)V

    .line 1031
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 1032
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 1033
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 1034
    return-void
.end method

.method nextSearch()Z
    .locals 12

    .line 1059
    const/4 v0, 0x0

    .line 1060
    .local v0, "out":Z
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v1, v1, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1061
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    const-string v3, "No current search pattern"

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1062
    return v2

    .line 1064
    :cond_0
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1065
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1066
    .local v1, "cur":I
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v3, v3, Lorg/jline/builtins/Nano;->searchBackwards:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1067
    .local v3, "dir":I
    :goto_0
    const/4 v5, -0x1

    .line 1068
    .local v5, "newPos":I
    const/4 v6, -0x1

    .line 1070
    .local v6, "newLine":I
    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/jline/builtins/Nano$Buffer;->doSearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1071
    .local v7, "curRes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v8, v8, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-eqz v8, :cond_2

    .line 1072
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1074
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1075
    .local v9, "r":I
    iget-object v10, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v10, v10, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v11, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_4

    goto :goto_2

    :cond_3
    iget v10, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v11, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v10, v11

    if-le v9, v10, :cond_4

    .line 1076
    :goto_2
    move v5, v9

    .line 1077
    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1078
    goto :goto_3

    .line 1080
    .end local v9    # "r":I
    :cond_4
    goto :goto_1

    .line 1082
    :cond_5
    :goto_3
    if-gez v5, :cond_9

    .line 1084
    :goto_4
    add-int v8, v1, v3

    iget-object v9, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rem-int v1, v8, v9

    .line 1085
    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-ne v1, v8, :cond_6

    .line 1086
    goto :goto_6

    .line 1088
    :cond_6
    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lorg/jline/builtins/Nano$Buffer;->doSearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1089
    .local v8, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1090
    iget-object v9, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v9, v9, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_5

    :cond_7
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    :goto_5
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1091
    move v6, v1

    .line 1092
    goto :goto_6

    .line 1094
    .end local v8    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_8
    goto :goto_4

    .line 1096
    :cond_9
    :goto_6
    if-gez v5, :cond_a

    .line 1097
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1098
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1099
    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1102
    :cond_a
    if-ltz v5, :cond_f

    .line 1103
    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-ne v6, v8, :cond_b

    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v9, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v8, v9

    if-ne v5, v8, :cond_b

    .line 1104
    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    const-string v8, "This is the only occurence"

    invoke-virtual {v4, v8}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1105
    return v2

    .line 1107
    :cond_b
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v2, v2, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-gt v6, v2, :cond_d

    if-ne v6, v2, :cond_c

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v2, v8

    if-gt v5, v2, :cond_d

    :cond_c
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v2, v2, Lorg/jline/builtins/Nano;->searchBackwards:Z

    if-nez v2, :cond_e

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    if-lt v6, v2, :cond_d

    if-ne v6, v2, :cond_e

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v8, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v2, v8

    if-ge v5, v2, :cond_e

    .line 1109
    :cond_d
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    const-string v8, "Search Wrapped"

    invoke-virtual {v2, v8}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1111
    :cond_e
    iput v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1112
    invoke-virtual {p0, v5, v4}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    .line 1113
    const/4 v0, 0x1

    goto :goto_7

    .line 1115
    :cond_f
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v8, v8, Lorg/jline/builtins/Nano;->searchTerm:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\" not found"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 1117
    :goto_7
    return v0
.end method

.method public nextWord()V
    .locals 2

    .line 1003
    :goto_0
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getCurrentChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1005
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getCurrentChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1007
    :cond_1
    return-void
.end method

.method open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 205
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    .line 209
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->charset:Ljava/nio/charset/Charset;

    .line 211
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 213
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 214
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->root:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 218
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 220
    return-void

    .line 223
    :cond_2
    :try_start_0
    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v1, "fis":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->read(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    .end local v1    # "fis":Ljava/io/InputStream;
    :cond_3
    goto :goto_1

    .line 223
    .restart local v1    # "fis":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "path":Ljava/nio/file/Path;
    :cond_4
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 226
    .end local v1    # "fis":Ljava/io/InputStream;
    .restart local v0    # "path":Ljava/nio/file/Path;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jline/builtins/Nano$Buffer;->file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jline/builtins/Nano;->setMessage(Ljava/lang/String;)V

    .line 229
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method open(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    .line 237
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->charset:Ljava/nio/charset/Charset;

    .line 239
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 241
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->read(Ljava/io/InputStream;)V

    .line 242
    return-void
.end method

.method public prevPage()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getRows()I

    move-result v0

    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeHeader()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-virtual {v1}, Lorg/jline/builtins/Nano;->computeFooter()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1022
    .local v0, "height":I
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->scrollUp(I)V

    .line 1023
    const/4 v1, 0x0

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 1024
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->firstLineToDisplay:I

    .line 1025
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iput v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLineToDisplay:I

    .line 1026
    return-void
.end method

.method public prevWord()V
    .locals 2

    .line 992
    :goto_0
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getCurrentChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getCurrentChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveLeft(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 996
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->getCurrentChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveLeft(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 998
    :cond_2
    invoke-virtual {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(I)Z

    .line 999
    return-void
.end method

.method read(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "fis"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 248
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "remaining":I
    const/4 v4, 0x0

    if-lez v2, :cond_0

    .line 249
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 254
    .local v2, "bytes":[B
    :try_start_0
    new-instance v5, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 255
    .local v5, "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    array-length v6, v2

    invoke-virtual {v5, v2, v4, v6}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    .line 256
    invoke-virtual {v5}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 257
    invoke-virtual {v5}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 258
    invoke-virtual {v5}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    iput-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->charset:Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v5    # "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    :cond_1
    goto :goto_1

    .line 260
    :catchall_0
    move-exception v5

    .line 265
    :goto_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 268
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 269
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 270
    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 272
    .end local v7    # "line":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 273
    .end local v5    # "reader":Ljava/io/BufferedReader;
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 274
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    const-string v6, ""

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_3
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 277
    invoke-virtual {p0, v4}, Lorg/jline/builtins/Nano$Buffer;->moveToChar(I)V

    .line 278
    return-void

    .line 265
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4
.end method

.method replaceFromCursor(ILjava/lang/String;)V
    .locals 5
    .param p1, "chars"    # I
    .param p2, "string"    # Ljava/lang/String;

    .line 1397
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v0

    .line 1398
    .local v0, "pos":I
    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1399
    .local v1, "text":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, "mod":Ljava/lang/String;
    add-int v3, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1403
    :cond_0
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v4, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1404
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    .line 1405
    return-void
.end method

.method resetDisplay()V
    .locals 2

    .line 710
    iget v0, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    .line 711
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    .line 712
    return-void
.end method

.method public scrollDown(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 1042
    invoke-direct {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->cursorDown(I)V

    .line 1043
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->moveDisplayDown(I)V

    .line 1044
    return-void
.end method

.method public scrollUp(I)V
    .locals 0
    .param p1, "lines"    # I

    .line 1037
    invoke-direct {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->cursorUp(I)V

    .line 1038
    invoke-virtual {p0, p1}, Lorg/jline/builtins/Nano$Buffer;->moveDisplayUp(I)V

    .line 1039
    return-void
.end method

.method uncut()V
    .locals 10

    .line 1316
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    return-void

    .line 1319
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1320
    .local v0, "l":Ljava/lang/String;
    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->offsetInLine:I

    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->column:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/jline/builtins/Nano$Buffer;->charPosition(I)I

    move-result v1

    .line 1321
    .local v1, "col":I
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    invoke-static {v2}, Lorg/jline/builtins/Nano;->access$700(Lorg/jline/builtins/Nano;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1322
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v7, v7, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 1324
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v4}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    goto/16 :goto_2

    .line 1325
    :cond_1
    if-nez v1, :cond_3

    .line 1326
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v5, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v6, v6, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v2, v5, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1327
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 1328
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 1329
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v3, v3, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0, v2, v3}, Lorg/jline/builtins/Nano$Buffer;->gotoLine(II)V

    goto/16 :goto_2

    .line 1331
    :cond_2
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2, v4}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    goto/16 :goto_2

    .line 1334
    :cond_3
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1335
    .local v2, "gotol":I
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 1336
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v8, v8, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1338
    :cond_4
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v8, v8, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1339
    iget v2, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    .line 1340
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v6, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v8, v8, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v9, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v9, v9, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1341
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_5

    .line 1342
    add-int/lit8 v2, v2, 0x1

    .line 1343
    iget-object v6, p0, Lorg/jline/builtins/Nano$Buffer;->lines:Ljava/util/List;

    iget v7, p0, Lorg/jline/builtins/Nano$Buffer;->line:I

    iget-object v8, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v8, v8, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1341
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1346
    .end local v5    # "i":I
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/jline/builtins/Nano$Buffer;->computeAllOffsets()V

    .line 1347
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_6

    .line 1348
    iget-object v3, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v3, v3, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lorg/jline/builtins/Nano$Buffer;->gotoLine(II)V

    goto :goto_2

    .line 1350
    :cond_6
    iget-object v5, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v5, v5, Lorg/jline/builtins/Nano;->cutbuffer:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lorg/jline/builtins/Nano$Buffer;->moveRight(IZ)Z

    .line 1353
    .end local v2    # "gotol":I
    :goto_2
    iget-object v2, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v2, v2, Lorg/jline/builtins/Nano;->display:Lorg/jline/utils/Display;

    invoke-virtual {v2}, Lorg/jline/utils/Display;->clear()V

    .line 1354
    iput-boolean v4, p0, Lorg/jline/builtins/Nano$Buffer;->dirty:Z

    .line 1355
    iput-boolean v4, p0, Lorg/jline/builtins/Nano$Buffer;->uncut:Z

    .line 1356
    return-void
.end method

.method width()I
    .locals 4

    .line 509
    iget-object v0, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-object v0, v0, Lorg/jline/builtins/Nano;->size:Lorg/jline/terminal/Size;

    invoke-virtual {v0}, Lorg/jline/terminal/Size;->getColumns()I

    move-result v0

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->printLineNumbers:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/jline/builtins/Nano$Buffer;->this$0:Lorg/jline/builtins/Nano;

    iget-boolean v1, v1, Lorg/jline/builtins/Nano;->wrapping:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/jline/builtins/Nano$Buffer;->firstColumnToDisplay:I

    if-lez v1, :cond_1

    move v2, v3

    :cond_1
    sub-int/2addr v0, v2

    return v0
.end method
