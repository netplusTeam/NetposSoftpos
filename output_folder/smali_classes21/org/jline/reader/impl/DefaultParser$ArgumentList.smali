.class public Lorg/jline/reader/impl/DefaultParser$ArgumentList;
.super Ljava/lang/Object;
.source "DefaultParser.java"

# interfaces
.implements Lorg/jline/reader/ParsedLine;
.implements Lorg/jline/reader/CompletingParsedLine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/reader/impl/DefaultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArgumentList"
.end annotation


# instance fields
.field private final cursor:I

.field private final line:Ljava/lang/String;

.field private final openingQuote:Ljava/lang/String;

.field private final rawWordCursor:I

.field private final rawWordLength:I

.field final synthetic this$0:Lorg/jline/reader/impl/DefaultParser;

.field private final wordCursor:I

.field private final wordIndex:I

.field private final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jline/reader/impl/DefaultParser;Ljava/lang/String;Ljava/util/List;III)V
    .locals 11
    .param p1, "this$0"    # Lorg/jline/reader/impl/DefaultParser;
    .param p2, "line"    # Ljava/lang/String;
    .param p4, "wordIndex"    # I
    .param p5, "wordCursor"    # I
    .param p6, "cursor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    .local p3, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 546
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 545
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lorg/jline/reader/impl/DefaultParser$ArgumentList;-><init>(Lorg/jline/reader/impl/DefaultParser;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;II)V

    .line 547
    return-void
.end method

.method public constructor <init>(Lorg/jline/reader/impl/DefaultParser;Ljava/lang/String;Ljava/util/List;IIILjava/lang/String;II)V
    .locals 1
    .param p1, "this$0"    # Lorg/jline/reader/impl/DefaultParser;
    .param p2, "line"    # Ljava/lang/String;
    .param p4, "wordIndex"    # I
    .param p5, "wordCursor"    # I
    .param p6, "cursor"    # I
    .param p7, "openingQuote"    # Ljava/lang/String;
    .param p8, "rawWordCursor"    # I
    .param p9, "rawWordLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 563
    .local p3, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p2, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->line:Ljava/lang/String;

    .line 565
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->words:Ljava/util/List;

    .line 566
    iput p4, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->wordIndex:I

    .line 567
    iput p5, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->wordCursor:I

    .line 568
    iput p6, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->cursor:I

    .line 569
    iput-object p7, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->openingQuote:Ljava/lang/String;

    .line 570
    iput p8, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->rawWordCursor:I

    .line 571
    iput p9, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->rawWordLength:I

    .line 572
    return-void
.end method


# virtual methods
.method public cursor()I
    .locals 1

    .line 595
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->cursor:I

    return v0
.end method

.method public escape(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "complete"    # Z

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 605
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->openingQuote:Ljava/lang/String;

    .line 606
    .local v1, "quote":Ljava/lang/String;
    const/4 v2, 0x0

    .line 607
    .local v2, "middleQuotes":Z
    iget-object v3, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->openingQuote:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 608
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 609
    iget-object v4, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-virtual {v4, v0, v3}, Lorg/jline/reader/impl/DefaultParser;->isQuoteChar(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    const/4 v2, 0x1

    .line 611
    goto :goto_1

    .line 608
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    .end local v3    # "i":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v3}, Lorg/jline/reader/impl/DefaultParser;->access$200(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 616
    iget-object v3, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v3}, Lorg/jline/reader/impl/DefaultParser;->access$200(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_8

    .line 620
    iget-object v3, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->openingQuote:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 621
    new-instance v3, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda0;-><init>(Lorg/jline/reader/impl/DefaultParser$ArgumentList;Ljava/lang/StringBuilder;)V

    .local v3, "needToBeEscaped":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 625
    .end local v3    # "needToBeEscaped":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 626
    new-instance v3, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda1;-><init>(Lorg/jline/reader/impl/DefaultParser$ArgumentList;Ljava/lang/StringBuilder;)V

    .restart local v3    # "needToBeEscaped":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 631
    .end local v3    # "needToBeEscaped":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :cond_3
    new-instance v3, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lorg/jline/reader/impl/DefaultParser$ArgumentList$$ExternalSyntheticLambda2;-><init>(Lorg/jline/reader/impl/DefaultParser$ArgumentList;Ljava/lang/StringBuilder;)V

    .line 634
    .restart local v3    # "needToBeEscaped":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 635
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 636
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    iget-object v7, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-static {v7}, Lorg/jline/reader/impl/DefaultParser;->access$200(Lorg/jline/reader/impl/DefaultParser;)[C

    move-result-object v7

    aget-char v7, v7, v4

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v5, v6

    .line 634
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5    # "i":I
    :cond_5
    goto :goto_5

    .line 640
    .end local v3    # "needToBeEscaped":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    :cond_6
    iget-object v3, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->openingQuote:Ljava/lang/String;

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    .line 641
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 642
    iget-object v5, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-virtual {v5, v0, v3}, Lorg/jline/reader/impl/DefaultParser;->isDelimiterChar(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 643
    const-string v1, "\'"

    .line 644
    goto :goto_5

    .line 641
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 648
    .end local v3    # "i":I
    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    .line 649
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    if-eqz p2, :cond_9

    .line 651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_9
    return-object v0
.end method

.method synthetic lambda$escape$0$org-jline-reader-impl-DefaultParser$ArgumentList(Ljava/lang/StringBuilder;Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 621
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/jline/reader/impl/DefaultParser;->access$300(Lorg/jline/reader/impl/DefaultParser;C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->openingQuote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method synthetic lambda$escape$1$org-jline-reader-impl-DefaultParser$ArgumentList(Ljava/lang/StringBuilder;Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 626
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/jline/reader/impl/DefaultParser;->access$300(Lorg/jline/reader/impl/DefaultParser;C)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$escape$2$org-jline-reader-impl-DefaultParser$ArgumentList(Ljava/lang/StringBuilder;Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 631
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/jline/reader/impl/DefaultParser;->isDelimiterChar(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/jline/reader/impl/DefaultParser;->access$300(Lorg/jline/reader/impl/DefaultParser;C)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->this$0:Lorg/jline/reader/impl/DefaultParser;

    .line 632
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/jline/reader/impl/DefaultParser;->access$400(Lorg/jline/reader/impl/DefaultParser;C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 631
    :goto_1
    return v0
.end method

.method public line()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->line:Ljava/lang/String;

    return-object v0
.end method

.method public rawWordCursor()I
    .locals 1

    .line 659
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->rawWordCursor:I

    return v0
.end method

.method public rawWordLength()I
    .locals 1

    .line 664
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->rawWordLength:I

    return v0
.end method

.method public word()Ljava/lang/String;
    .locals 2

    .line 580
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->wordIndex:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->words:Ljava/util/List;

    iget v1, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->wordIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 581
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public wordCursor()I
    .locals 1

    .line 587
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->wordCursor:I

    return v0
.end method

.method public wordIndex()I
    .locals 1

    .line 575
    iget v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->wordIndex:I

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

    .line 591
    iget-object v0, p0, Lorg/jline/reader/impl/DefaultParser$ArgumentList;->words:Ljava/util/List;

    return-object v0
.end method
